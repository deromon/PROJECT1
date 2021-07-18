import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utility/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.roboto().fontFamily,
        primaryTextTheme: GoogleFonts.robotoCondensedTextTheme(),

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {

        "/": (context)=> LoginPage(),
        MyRoutes.homeRoutes: (context)=> HomePage(),
        MyRoutes.loginRoutes: (context)=> LoginPage(),
      },
      
    );
  }
}

