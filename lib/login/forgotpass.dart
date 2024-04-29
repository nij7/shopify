import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenForgot extends StatelessWidget {
  const ScreenForgot({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(
            height: screenSize.height/4,
          ),
          Center(
            child: Text('Forgot Password?',style: TextStyle(
              fontSize: screenSize.height*.03
            ),),
          ),
          Text("Don't worry we have got you covered"),
          Padding(
            padding: EdgeInsets.all(screenSize.height*0.025),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'User@gmail.com',
                suffixIcon: Icon(Icons.email),
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenSize.height*0.02),
            child: Text('We will send you message to set or reset your new password',textAlign: TextAlign.center,),
          ),
          SizedBox(
            height: screenSize.height*0.06,
            width: screenSize.height*0.4,
            child: ElevatedButton(onPressed: (){
            
            }, child: Text('Submit',style:TextStyle(
              color: const Color.fromARGB(255, 43, 126, 193)
            ) ,)),
          )
        ],
      )),
    );
  }
}
