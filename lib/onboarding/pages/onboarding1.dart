import 'package:flutter/material.dart';

class OnboardOne extends StatelessWidget {
  const OnboardOne({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/onboarding/discover.jpg'),
        Text(
          'Discover',
          style: TextStyle(
              fontSize: 30, color: Colors.cyan, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.all(screensize.height*0.02),
          child: Text(
              'It"s where you can explore fresh finds and uncover hidden gems that match your interests and preferences.'),
        )
      ],
    );
  }
}
