import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  NotificationsState();
  }
}

class  NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text('Notifications'),
      ) ,
    );
  }
}