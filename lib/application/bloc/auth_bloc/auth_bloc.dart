import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Add Firebase Auth
import 'package:shared_preferences/shared_preferences.dart'; // Add SharedPreferences

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthBloc() : super(AuthInitial()) {
    on<SignUpEvent>(
        _onSignUp);
    on<SignInEvent>(onSignIn);
  }

  Future<void> _onSignUp(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      // Validate password and confirm password
      if (event.password != event.confirmPassword) {
        emit(AuthFailure(error: 'Passwords do not match.'));
        return;
      }

      // Create user with email and password
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      // Save user data locally (e.g., SharedPreferences)
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('userId', userCredential.user!.uid);

      // Emit success state
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      // Handle Firebase-specific errors //
      emit(
          AuthFailure(error: e.message ?? 'An error occurred during sign-up.'));
    } catch (e) {
      // Handle generic errors
      emit(AuthFailure(error: e.toString()));
    }
  }

  Future<void> onSignIn(SignInEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      // Sign in with email and password
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      // Save user data locally (e.g., SharedPreferences)
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('userId', userCredential.user!.uid);

      // Emit success state
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      // Handle Firebase-specific errors
      if (e.code == 'user-not-found') {
        emit(AuthFailure(error: 'No user found for this email.'));
      } else if (e.code == 'wrong-password') {
        emit(AuthFailure(error: 'Incorrect password. Please try again.'));
      } else {
        emit(AuthFailure(
            error: e.message ?? 'An error occurred during sign-in.'));
      }
    } catch (e) {
      // Handle generic errors
      emit(AuthFailure(error: e.toString()));
    }
  }
}
