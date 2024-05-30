// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zudio/pages/welcome_page.dart';
import 'package:zudio/pages/login_page.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
        colorSchemeSeed: const Color.fromARGB(255, 140, 241, 190),
        scaffoldBackgroundColor: const Color(
          0xfff6f6f6,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color( 
            0xfff6f6f6,
            ),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        ),
      initialRoute: "/welcome",
      routes: {
        "/welcome":(context) => WelcomePages(),
        "/login":(context)  => LoginPage(),
      },
    );
  }
}