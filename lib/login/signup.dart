import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:onboarding/home/screenhome.dart';
import 'package:onboarding/login/loginscreen.dart';
import 'package:onboarding/resources/authentication.dart';

class ScreenSignup extends StatefulWidget {
  const ScreenSignup({super.key});

  @override
  State<ScreenSignup> createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool _isVisible = true;

  // auth
  AuthenticationMethods authenticationMethods = AuthenticationMethods();

  @override
  void dispose() {
    // TODO: implement dispose
    namecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              height: screensize.height * 0.35,
              width: screensize.height * 0.35,
              child: Image.asset('assets/login/signup.jpg')),
          Text(
            'Sign up',
            style: TextStyle(
                fontSize: screensize.height * 0.031,
                color: const Color.fromARGB(255, 40, 119, 185),
                fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: EdgeInsets.all(screensize.height * 0.025),
            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  hintText: "Full Name", prefixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screensize.height * 0.025),
            child: TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  hintText: "Email", prefixIcon: Icon(Icons.email)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screensize.height * 0.025),
            child: TextField(
              controller: passwordcontroller,
              obscureText: _isVisible,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      child: !_isVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility))),
            ),
          ),
          SizedBox(
            // color: Colors.green,
            height: screensize.height * 0.06,
            width: screensize.width * 0.51,
            child: ElevatedButton(
              onPressed: () async{
                String output= await authenticationMethods.signupUser(
                    name: namecontroller.text,
                    email: emailcontroller.text,
                    password: passwordcontroller.text);
                    
              },
              child: const Text('Sign up',
                  style: TextStyle(color: Color.fromARGB(255, 38, 105, 160))),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?'),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ScreenLogin();
                    }));
                  },
                  child: Text('Login'))
            ],
          )
        ],
      ),
    ));
  }

  // void signUp() async{
  //   String fullname = fullnamecontroller.text;
  //   String email = emailcontroller.text;
  //   String password = passwordcontroller.text;

  //   User? user = await auth.signUpWithEmailandPassword(email, password);
  //   if ( email.isNotEmpty ||password.isNotEmpty) {

  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ScreenHome()))

  //   }
  //   else{
  //     print("empty field found");

  //   }
  // }
}
