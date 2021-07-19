

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
            "login , $name",
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
            onChanged: (value) {
              name = value;
              setState(() {
                
              });
            },
          ),
                  ],
                ),
        ),
        SizedBox(
          height: 20,
        
        ),
        InkWell(
          onTap: () async {
            setState(() {
              changeButton = true;
            });
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, MyRoutes.homeRoutes);
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: changeButton? 50:100, 
            height: 50,
            alignment: Alignment.center,
             
            child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.grey,
                        )
                      : Text(
              "login",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              //shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
             borderRadius: BorderRadius.circular(changeButton?50:8)
            ),
          ),
        )
        // ElevatedButton(
        //         child: Text("Login"),
        //         style: TextButton.styleFrom(
        //           minimumSize: Size(100, 50),
        //         ),
        //         onPressed: () {
        //           Navigator.pushNamed(context, MyRoutes.homeRoutes);
        //         },
        //       )
         ],
        
          ),
      )
      
    );
  }
}