import 'package:flutter/material.dart';

class  Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  ProfileState();
  }
}

class  ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text('Profile'),
      ) ,
    );
  }
}