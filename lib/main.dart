import 'package:flutter/material.dart'  show Colors, MaterialApp, ThemeData, WidgetsFlutterBinding, runApp;
import 'package:office_schedular/app_screens/register_screen.dart';
import './app_screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
void main()
async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Register(),
        theme: ThemeData(
          textTheme:
          GoogleFonts.josefinSansTextTheme(),
            primaryColor: Colors.teal,
            accentColor: Colors.tealAccent,
        ),
      )
  );
}




