// import 'package:flutter/material.dart';
// import 'homeScreen.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Add a delay and navigate to the main screen
//     Future.delayed(Duration(seconds: 3), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       backgroundColor: Color(0xFF086C54), // Match the background color
//       body: Column(
//         children: [
//         Center(
//           child: Image.asset(
//           'Assets/images/Group 2 (1).png',
//           // fit: BoxFit.contain,
//
//                 ),
//         ),
//           Text(
//             "StudySphere",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//           )
//         ],
//       ),
//     );
//   }
// }








//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../utils/constants/color_constants.dart';
// import '../controller/authentication_controller.dart';
// import '../model/authentication_model.dart';
// import '../model/registration_model.dart';
//
// debugPrint('RegistrationPage loaded');
//
// class RegistrationPage extends StatefulWidget {
// const RegistrationPage({super.key});
//
// @override
// State<RegistrationPage> createState() => _RegistrationPageState();
// }
//
// class _RegistrationPageState extends State<RegistrationPage> {
// final _formKey = GlobalKey<FormState>();
// final TextEditingController nameController = TextEditingController();
// final TextEditingController emailController = TextEditingController();
// final TextEditingController passwordController = TextEditingController();
// final TextEditingController confirmPasswordController =
// TextEditingController();
// bool isPasswordVisible = false;
// bool isConfirmPasswordVisible = false;
//
// @override
// Widget build(
// BuildContext context,
// ) {
// debugPrint('Building RegistrationPage UI');
// return Scaffold(
// body: BlocListener<AuthenticationBloc, AuthenticationState>(
// listener: (context, state) {
// if (state is AuthenticationSuccess) {
// debugPrint('Registration Successful');
// ScaffoldMessenger.of(context).showSnackBar(
// const SnackBar(content: Text('Registration Successful!')),
// );
// } else if (state is AuthenticationFailure) {
// debugPrint('Registration Failed: ${state.error}');
// ScaffoldMessenger.of(context).showSnackBar(
// SnackBar(content: Text(state.error)),
// );
// }
// },
// child: SingleChildScrollView(
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 40.0),
// child: Form(
// key: _formKey,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const SizedBox(height: 60),
// const Center(
// child: Text(
// "Sign Up",
// style:
// TextStyle(fontWeight: FontWeight.w900, fontSize: 29),
// ),
// ),
// const Center(
// child: Text(
// "Please enter your information below\nin order to create an account",
// textAlign: TextAlign.center,
// style: TextStyle(
// fontWeight: FontWeight.w300, color: Colors.grey),
// ),
// ),
// const SizedBox(height: 20),
// const Text("Full Name"),
// TextFormField(
// controller: nameController,
// validator: RegistrationModel.validateName,
// decoration: InputDecoration(
// hintText: "Enter your name",
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(7)),
// ),
// ),
// const SizedBox(height: 20),
// const Text("Email"),
// TextFormField(
// controller: emailController,
// validator: RegistrationModel.validateEmail,
// decoration: InputDecoration(
// hintText: "example@gmail.com",
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(7)),
// ),
// ),
// const SizedBox(height: 20),
// const Text("Password"),
// TextFormField(
// controller: passwordController,
// validator: RegistrationModel.validatePassword,
// obscureText: !isPasswordVisible,
// decoration: InputDecoration(
// hintText: "**********",
// suffixIcon: IconButton(
// onPressed: () {
// setState(() {
// isPasswordVisible = !isPasswordVisible;
// });
// debugPrint('Password visibility toggled');
// },
// icon: Icon(
// isPasswordVisible
// ? Icons.visibility_off
//     : Icons.visibility,
// size: 20,
// ),
// ),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(7)),
// ),
// ),
// const SizedBox(height: 20),
// const Text("Confirm Password"),
// TextFormField(
// controller: confirmPasswordController,
// validator: (value) => RegistrationModel.validateConfirmPassword(
// value, passwordController.text),
// obscureText: !isConfirmPasswordVisible,
// decoration: InputDecoration(
// hintText: "**********",
// suffixIcon: IconButton(
// onPressed: () {
// setState(() {
// isConfirmPasswordVisible =
// !isConfirmPasswordVisible;
// });
// debugPrint('Confirm Password visibility toggled');
// },
// icon: Icon(
// isConfirmPasswordVisible
// ? Icons.visibility_off
//     : Icons.visibility,
// size: 20,
// ),
// ),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(7)),
// ),
// ),
// const SizedBox(height: 20),
// Center(
// child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
// builder: (context, state) {
// return ElevatedButton(
// onPressed: () {
// if (_formKey.currentState!.validate()) {
// debugPrint('Register button pressed');
// context.read<AuthenticationBloc>().add(
// RegisterUser(
// nameController.text,
// emailController.text,
// passwordController.text,
// confirmPasswordController.text,
// ),
// );
// }
// },
// style: ElevatedButton.styleFrom(
// minimumSize: Size(310, 50),
// backgroundColor: SColors.primaryColor,
// shape: ContinuousRectangleBorder(
// borderRadius: BorderRadius.circular(15)),
// ),
// child: state is AuthenticationLoading
// ? CircularProgressIndicator(color: Colors.white)
//     : Text(
// "SIGN UP",
// style: TextStyle(
// fontSize: 18,
// color: Colors.white,
// fontWeight: FontWeight.w500),
// ),
// );
// },
// ),
// ),
// SizedBox(height: 20),
// Center(
// child: TextButton(
// onPressed: () {
// debugPrint('Navigating to Sign In Page');
// Navigator.pop(context);
// },
// child: Text(
// "Already have an account? Sign In",
// style: TextStyle(
// color: SColors.primaryColor,
// fontWeight: FontWeight.w500),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ),
// );
// }
// }




/////////////////////////////////////////////////////////////////////////////
//
// //
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:studysphere/application/authentication/view/registration.dart';
// import '../../../utils/constants/color_constants.dart';
// import '../controller/authentication_controller.dart';
//
// debugPrint('SignInPage loaded');
//
// class SignInPage extends StatefulWidget {
// const SignInPage({super.key});
//
// @override
// State<SignInPage> createState() => _SignInPageState();
// }
//
// class _SignInPageState extends State<SignInPage> {
// final _formKey = GlobalKey<FormState>();
// final TextEditingController emailController = TextEditingController();
// final TextEditingController passwordController = TextEditingController();
// bool isPasswordVisible = false;
//
// String? _validatePassword(String? value) {
// if (value == null || value.isEmpty) {
// return "Password can't be empty";
// }
// if (value.length < 6) {
// return "Password must be at least 6 characters long";
// }
// return null;
// }
//
// @override
// Widget build(BuildContext context) {
// debugPrint('Building SignInPage UI');
// return Scaffold(
// body: BlocListener<AuthenticationBloc, AuthenticationState>(
// listener: (context, state) {
// if (state is AuthenticationSuccess) {
// debugPrint('Login Successful');
// ScaffoldMessenger.of(context).showSnackBar(
// const SnackBar(content: Text('Login Successful!')),
// );
// } else if (state is AuthenticationFailure) {
// debugPrint('Login Failed: ${state.error}');
// ScaffoldMessenger.of(context).showSnackBar(
// SnackBar(content: Text(state.error)),
// );
// }
// },
// child: SingleChildScrollView(
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 40.0),
// child: Form(
// key: _formKey,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const SizedBox(height: 60),
// const Center(
// child: Text(
// "Sign In",
// style: TextStyle(fontWeight: FontWeight.w900, fontSize: 29),
// ),
// ),
// const Center(
// child: Text(
// "Please enter your credentials to login",
// textAlign: TextAlign.center,
// style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
// ),
// ),
// const SizedBox(height: 20),
// const Text("Email"),
// TextFormField(
// controller: emailController,
// decoration: InputDecoration(
// hintText: "example@gmail.com",
// border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
// ),
// validator: validateEmail, // Email Validation
// ),
// const SizedBox(height: 20),
// const Text("Password"),
// TextFormField(
// controller: passwordController,
// obscureText: !isPasswordVisible,
// decoration: InputDecoration(
// hintText: "**********",
// suffixIcon: IconButton(
// onPressed: () {
// setState(() {
// isPasswordVisible = !isPasswordVisible;
// });
// debugPrint('Password visibility toggled');
// },
// icon: Icon(
// isPasswordVisible ? Icons.visibility_off : Icons.visibility,
// size: 20,
// ),
// ),
// border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
// ),
// validator: _validatePassword, // ✅ Password Validation
// ),
// const SizedBox(height: 20),
// Center(
// child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
// builder: (context, state) {
// return ElevatedButton(
// onPressed: () {
// if (_formKey.currentState!.validate()) {
// debugPrint('Sign In button pressed');
// context.read<AuthenticationBloc>().add(
// SignInUser(
// emailController.text,
// passwordController.text,
// ),
// );
// }
// },
// style: ElevatedButton.styleFrom(
// minimumSize: const Size(310, 50),
// backgroundColor: SColors.primaryColor,
// shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(15)),
// ),
// child: state is AuthenticationLoading
// ? const CircularProgressIndicator(color: Colors.white)
//     : const Text(
// "SIGN IN",
// style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
// ),
// );
// },
// ),
// ),
// const SizedBox(height: 20),
// Center(
// child: TextButton(
// onPressed: () {
// debugPrint('Navigating to Registration Page');
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => RegistrationPage()),
// );
// },
// child: const Text(
// "Don't have an account? Sign Up",
// style: TextStyle(color: SColors.primaryColor, fontWeight: FontWeight.w500),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ),
// );
// }
// }
