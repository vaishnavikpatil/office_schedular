import 'package:flutter/material.dart';
import 'package:office_schedular/app_screens/create_group.dart';

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
        title: Text('Group'),
      ),
      body:CreateGroup(),
    );
  }
}


class Chat  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  ChatState();
  }
}

class  ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text('Group'),
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
    ),
    body:Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
            height: 60,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 20, ),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.send,color: Colors.white,size: 18,),
                  backgroundColor: Colors.teal,
                  elevation: 0,
                ),
              ],

            ),
          ),
        ),
      ],
    ));

  }
}