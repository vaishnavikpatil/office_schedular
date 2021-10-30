import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  UpdateState();
  }
}

class  UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text('Updates'),
      ) ,
      body:Center(
        child: Container(
          child: Text('No Updates Available'),
        ),
      ),
    );
  }
}