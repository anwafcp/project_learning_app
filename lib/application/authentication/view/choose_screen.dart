import 'package:flutter/material.dart';
import 'package:studysphere/application/authentication/view/registration.dart';

import '../../../utils/constants/color_constants.dart';

class ChooseScreen_page extends StatelessWidget {
  const ChooseScreen_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Text(
            "Who Are You..?",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.black,
                ),

          )
          ,
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 10,shadowColor: Colors.black,

                      minimumSize: Size(150, 180),
                      backgroundColor: SColors.primaryColor,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/Teacher/teacher.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Teacher",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  )),
              Spacer(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationPage(),));
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.black,
                      minimumSize: Size(150, 180),
                      backgroundColor: SColors.primaryColor,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/Teacher/student.png",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Student",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  )),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          SizedBox(height: 50,),

          // Image.asset('assets/images/onboarding/onboard4.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "   Join  StudySphere \n to start your journey ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
