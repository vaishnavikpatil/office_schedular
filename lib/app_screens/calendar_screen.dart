import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  CalendarState();
  }
}

class   CalendarState extends State< Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text(' Calendar'),
      ) ,
    );
  }
}