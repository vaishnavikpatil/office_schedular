import 'package:flutter/material.dart';

class  Aboutapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return   AboutappState();
  }
}

class   AboutappState extends State< Aboutapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text(' Aboutapp'),
      ) ,
    );
  }
}