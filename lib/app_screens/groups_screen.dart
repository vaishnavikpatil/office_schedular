import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:office_schedular/app_screens/create_group.dart';
import 'package:office_schedular/app_screens/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

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
  File image = File('assets/office_desk.jpg');
  bool show = false;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source:source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image =imageTemporary;
        this.show = true;
      });
    }on PlatformException catch(e){
      print ('Failed to pick image: $e');
  }
}

  TextEditingController message = TextEditingController(text: "");
  String data = "";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
            },
          ),
        backgroundColor: Colors.teal,
        title: Text('Group'),
          actions: [
            IconButton(
              icon: Icon(Icons.location_on),
              onPressed: () async{
                await launch("https://maps.apple.com/?sll=19.209400,73.093948");
              },
            ),
          ],
    ),
    body:Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Visibility(
            visible: show,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4,
                child: Image.file(image),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 20.0,right: 20),
            child: Text(data,style: TextStyle(fontSize: 20),
            textAlign: TextAlign.end,),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(icon: Icon (Icons.camera_alt_outlined), color: Colors.white,
                    onPressed: ()=> pickImage(ImageSource.camera),
                    ),
                  ),
                  //gallery
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(icon: Icon (Icons.camera_sharp), color: Colors.white,
                      onPressed: ()=>pickImage(ImageSource.gallery),
                    ),
                  ),
                  SizedBox(width: 15,),

                  Expanded(
                    child: TextField(
                      controller: message,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){
                      setState(() {
                        data = message.text;
                        message.clear();
                      });

                    },
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Colors.teal,
                    elevation: 0,
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    ));

  }
}