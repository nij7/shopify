import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onboarding/login/forgotpass.dart';
import 'package:onboarding/login/signup.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    print(screenSize.height);
    print(screenSize.width);

    return Scaffold(
        body: SafeArea(
            child: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: screenSize.height * 0.45,
                width: screenSize.height * 0.45,
                child: Image.asset('assets/login/login.jpg')),
            Text(
              "Login",
              style: TextStyle(
                  fontSize: screenSize.height * 0.031,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 40, 119, 185)),
            ),
            Padding(
              padding: EdgeInsets.all(screenSize.height * 0.019),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email id', prefixIcon: Icon(Icons.email)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenSize.height * 0.019),
              child: TextField(
                obscureText: _isVisible,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        child: !_isVisible? Icon(Icons.visibility_off):Icon(Icons.visibility)),
                    prefixIcon: Icon(Icons.lock)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ScreenForgot();
                      }));
                    },
                    child: Text('forgot password'))
              ],
            ),
            SizedBox(
              // color: Colors.green,
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.51,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Login',
                    style: TextStyle(color: Color.fromARGB(255, 38, 105, 160))),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.076,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                    onTap: () => Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ScreenSignup();
                        })),
                    child: Text("Sign up"))
              ],
            )
          ],
        ),
      ),
    )));
  }
}
