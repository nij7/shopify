import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onboarding/login/loginscreen.dart';
import 'package:onboarding/onboarding/pages/onboarding1.dart';
import 'package:onboarding/onboarding/pages/onboarding2.dart';
import 'package:onboarding/onboarding/pages/onboarding3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screeonboarding extends StatefulWidget {
  const Screeonboarding({super.key});

  @override
  State<Screeonboarding> createState() => _ScreeonboardingState();
}

class _ScreeonboardingState extends State<Screeonboarding> {
  bool lastpage = false;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) => setState(() {
              lastpage = (index == 2);
            }),
            children: [OnboardOne(), OnboardTwo(), OnboardThree()],
          ),
          Padding(
            padding: EdgeInsets.all(screenSize.height * 0.04),
            child: Container(
                alignment: Alignment(0, 0.80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => controller.jumpToPage(2),
                      child: Text("Skip",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: screenSize.height * 0.02,
                          )),
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                          dotHeight: 7,
                          dotWidth: 14,
                          type: WormType.thinUnderground),
                    ),
                    lastpage
                        ? Padding(
                            padding: EdgeInsets.all(screenSize.height * 0.04),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ScreenLogin();
                                }));
                              },
                              child: Text(
                                "Done",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: screenSize.height * 0.02,
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.all(screenSize.height * 0.04),
                            child: GestureDetector(
                              onTap: () => controller.nextPage(
                                  duration: Duration(milliseconds: 4),
                                  curve: Curves.easeInOut),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: screenSize.height * 0.02,
                                ),
                              ),
                            ),
                          )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
