import 'package:flutter/material.dart';

class Homescreenpage extends StatefulWidget {
  const Homescreenpage({super.key});

  @override
  State<Homescreenpage> createState() => _HomescreenpageState();
}

class _HomescreenpageState extends State<Homescreenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Text(
            "this is home page ",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ))
        ],
      ),
    );
  }
}
