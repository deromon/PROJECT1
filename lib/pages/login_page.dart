

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
      children: [
        SizedBox(
          height: 40,

        ),

        Image.asset(
          "assets/images/Login_image.png",
          
          height:100,
          width: 100,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: 25,

        ),
        Center(
        child: Text(
          "login",
          style: TextStyle(
            fontSize: 34,
            color: Colors.black,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
      SizedBox(
        height: 20,
      
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 40),
        child: Column(
                children: [
                  TextFormField(
          decoration: InputDecoration(
            hintText: "Enter UserName",
            labelText: "Username",
          ),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter passwrd",
            labelText: "Password",
          ),
        ),
                ],
              ),
      ),
      SizedBox(
        height: 20,
      
      ),
      ElevatedButton(
              child: Text("Login"),
              style: TextButton.styleFrom(),
              onPressed: () {},
            )
      ],
      
    )
      
    );
  }
}