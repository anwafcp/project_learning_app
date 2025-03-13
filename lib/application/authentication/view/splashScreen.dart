// // import 'package:flutter/material.dart';
// // import 'package:studysphere/application/authentication/view/onboardScreen.dart';
// // import 'package:studysphere/utils/constants/color_constants.dart';
// //
// // class SplashScreen extends StatefulWidget {
// //   @override
// //   _SplashScreenState createState() => _SplashScreenState();
// // }
// //
// // class _SplashScreenState extends State<SplashScreen> {
// //   @override
// //   void initState() {
// //     super.initState();
// //     // Add a delay and navigate to the main screen
// //     Future.delayed(Duration(seconds: 2), () {
// //       Navigator.of(context).pushReplacement(
// //         MaterialPageRoute(builder: (_) => Register_page()),
// //       );
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: SColors.primaryColor, // Match the background color
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         crossAxisAlignment: CrossAxisAlignment.center,
// //         children: [
// //           Center(
// //             child: Image.asset(
// //               'assets/images/splash/splash.png',
// //                fit: BoxFit.contain,
// //             ),
// //           ),
// //           // const Text(
// //           //   "Study Sphere",
// //           //   style: TextStyle(
// //           //       color: Colors.white,
// //           //       fontSize: 40,
// //           //       fontWeight: FontWeight.w800,
// //           //       fontFamily: "bold"),
// //           // )
// //         ],
// //       ),
// //     );
// //   }
// // }
// const SizedBox(
// height: 20,
// ),
// const Center(
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Expanded(
// child: Divider(
// thickness: 1,
// endIndent: 5,
// ),
// ),
// Text(
// "Or sign Up with",
// style: TextStyle(fontWeight: FontWeight.w800),
// ),
// Expanded(
// child: Divider(
// thickness: 1,
// indent: 5,
// ),
// ),
// ],
// ),
// ),
// const SizedBox(
// height: 20,
// ),
// Center(
// child: ElevatedButton(
// onPressed: () {},
// style: ElevatedButton.styleFrom(
// maximumSize: const Size(310, 70),
// backgroundColor: Colors.white,
// shape: ContinuousRectangleBorder(
// borderRadius: BorderRadius.circular(15))),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Image.asset(
// "assets/images/Teacher/g.png",
// width: 25,
// height: 25,
// ),
// const SizedBox(
// width: 20,
// ),
// const Text(
// "Sign In with Google",
// style: TextStyle(
// fontSize: 15,
// color: Colors.black,
// fontWeight: FontWeight.w300),
// ),
// ],
// )),
// ),
// Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// const Text(
// "Do you have an account?",
// style: TextStyle(
// color: Colors.grey,
// fontWeight: FontWeight.w500,
// ),
// textAlign: TextAlign.center,
// ),
// TextButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => const SignIn_page()));
// },
// child: const Text(
// "sign in here",
// style: TextStyle(
// color: SColors.primaryColor,
// fontWeight: FontWeight.w500),
// ))
// ],
// )
// ],
// ),
// ),
// ),
// ),
// );
// }
// }
//
