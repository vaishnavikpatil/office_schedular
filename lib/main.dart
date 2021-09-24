import 'package:flutter/material.dart';
import './app_screens/register_screen.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Register(),
        theme: ThemeData(
            primaryColor: Colors.teal,
            accentColor: Colors.tealAccent,
        ),
      )
  );
}



