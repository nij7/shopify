import 'package:flutter/material.dart';

class OnboardTwo extends StatelessWidget {
  const OnboardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/onboarding/pay2.jpg'),
        Text(
          'Pay',
          style: TextStyle(
              fontSize: 30, color: Colors.cyan, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.all(screensize.height*0.02),
          child: Text(
              'making your shopping experience more enjoyable and rewarding.'),
        )
      ],
    );
  }
}
