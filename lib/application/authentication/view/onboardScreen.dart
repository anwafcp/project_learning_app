import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studysphere/utils/constants/color_constants.dart';

import 'choose_screen.dart';

class Onboardscreen extends StatefulWidget {
  const Onboardscreen({super.key});

  @override
  State<Onboardscreen> createState() => _OnboardscreenState();
}

PageController pagecont = PageController();

class _OnboardscreenState extends State<Onboardscreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    pagecont = PageController(initialPage: pintex);
  }

  int pintex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChooseScreen_page(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 30),
                    backgroundColor: SColors.primaryColor,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              child: PageView(
                controller: pagecont,
                onPageChanged: (index) {
                  pintex = index;
                  setState(() {});
                },
                children: [
                  // --------------------------------------------------first page  View--------------================================
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Image(
                          image: AssetImage(
                              "assets/images/onboarding/onboard1.png"),
                          height: 300,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          "    Welcome to the \n Future of Education",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "  Explore interactive courses and personalized\n                learning, anytime, anywhere.",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ------------------------------------- // second Page View---------------------------------------------
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Image(
                          image: AssetImage(
                              "assets/images/onboarding/onboard2.png"),
                          height: 300,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          "Empower Your Mind \n    with StudyShere",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "  Your ultimate hub for smart, flexible,\n             and engaging learning",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ---------------------------------------Third Page View

                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Image(
                          image: AssetImage(
                              "assets/images/onboarding/onboard3.png"),
                          height: 300,
                        ),
                        Text(
                          "Elevate Your Learning \n        Experience",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Empowering learning journeys through \n       innovation and engagement.",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: pagecont,
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: SColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (pintex < 3) {
                      pintex += 1;
                      pagecont.jumpToPage(pintex);
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 40),
                    backgroundColor: SColors.primaryColor,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text("continue", style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
