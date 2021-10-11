
import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  GroupsState();
  }
}

class  GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text('Groups'),
      ) ,

    );
  }
}