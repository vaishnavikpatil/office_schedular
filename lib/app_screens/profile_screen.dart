



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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(width: 400,height: 100,),
            Container(
                child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)),
          Container(child: Text('Vaishnavi Patil',style: TextStyle(fontSize: 30)),),
            Container(width: 100,height: 50,),
            Container(
                child: Text('Email',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            Container(child: Text('vaishnavipatil108@gmail.com',style: TextStyle(fontSize: 30)),),
            Container(width: 100,height: 50,),
            Container(
                child: Text('Phone no',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            Container(child: Text('9168771081',style: TextStyle(fontSize: 30)),),
            Container(width: 100,height: 50,),
            Container(
                child: Text('Office ID',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            Container(child: Text('abc@123',style: TextStyle(fontSize: 30)),),

          ]
    ),
      ));
  }
}