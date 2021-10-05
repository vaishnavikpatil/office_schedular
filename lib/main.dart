//@dart=2.9
import 'package:flutter/material.dart'
    show Colors, MaterialApp, ThemeData, WidgetsFlutterBinding, runApp;
import 'package:firebase_core/firebase_core.dart';
import './app_screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

void main()
async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        theme: ThemeData(
          textTheme:
          GoogleFonts.josefinSansTextTheme(),
          primaryColor: Colors.teal,
        ),
      )
  );
}


