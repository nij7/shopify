import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardThree extends StatelessWidget {
  const OnboardThree({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LottieBuilder.asset("assets/animation/enjoy.json"),
        Text(
          'Enjoy',
          style: TextStyle(
              fontSize: 30, color: Colors.cyan, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.all(screensize.height*0.02),
          child: Text(' So, dive in and let the discovery begin!'),
        )
      ],
    );
  }
}
