// ignore_for_file: prefer_const_constructors

import 'package:breathe_better/config/config_color.dart';
import 'package:breathe_better/page/choose_user_type.dart';
import 'package:breathe_better/page/front_page.dart';
import 'package:breathe_better/page/login_page.dart';
import 'package:breathe_better/page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       textTheme: GoogleFonts.interTextTheme(
           Theme.of(context).textTheme,
      ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: ConfigColor.getMaterialColor(Color(0xFF22541D)),
      ),
      initialRoute: '/frontpage',
      routes: <String, WidgetBuilder> {
      '/frontpage': (BuildContext context) => FrontPage(),
      '/chooseusertype': (BuildContext context) => ChooseUserType(),
      '/login': (BuildContext context) => LoginPage(),
      '/signup': (BuildContext context) => SignUpPage()
    },
    );
  }
}
