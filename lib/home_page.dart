import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days=10;
  final String name="lol";
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bol"),
      ),
        body: Center(
          child: Container(
            child: Text("welcome"),    
          ),
        ),
        drawer:  Drawer(),
      );
  }
} 