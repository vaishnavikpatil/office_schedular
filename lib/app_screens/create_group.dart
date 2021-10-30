import 'package:flutter/material.dart';
import 'package:office_schedular/app_screens/groups_screen.dart';
class CreateGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  CreateGroupState();
  }
}

class  CreateGroupState extends State<CreateGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
         child:ListView(
             children: <Widget> [
               Padding(
                   padding: EdgeInsets.only(top:100.0,bottom:5.0,left: 10.0,right:10.0 ),
                   child: Container(
                     child: Text(
                       'Join Group',

                     ),
                   ),
                   ),
         Padding(
         padding: EdgeInsets.only(top:5.0,bottom:5.0,left: 10.0,right:10.0 ),
         child:Row(children: <Widget>[
           Expanded(child: TextField(
             decoration: InputDecoration(
                 labelText: ("Group ID"),
                 hintText: ("Enter Group ID"),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0),
                 )
             ),
           )
           ),]
         )
         ),
        Padding(
          padding:EdgeInsets.only(top:5.0,bottom: 5.0,left: 10.0,right: 10.0),
          child:Row(children: <Widget>[
            Expanded(
                child: ElevatedButton(
                  child: Text('Join'),
                  onPressed:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Chat()));
                  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    )
                )
    )
    ])),
               Padding(
                 padding: EdgeInsets.only(top:50.0,bottom:5.0,left: 10.0,right:10.0 ),
                 child: Container(
                   child: Text(
                     'Create Group',

                   ),
                 ),
               ),
               Padding(
                   padding: EdgeInsets.only(top:50.0,bottom:5.0,left: 10.0,right:10.0 ),
                   child:Row(children: <Widget>[
                     Expanded(child: TextField(
                       decoration: InputDecoration(
                           labelText: ("Group Name"),
                           hintText: ("Enter Group Name"),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5.0),
                           )
                       ),
                     )
                     ),]
                   )
               ),
               Padding(
                   padding: EdgeInsets.only(top:50.0,bottom:5.0,left: 10.0,right:10.0 ),
                   child:Row(children: <Widget>[
                     Expanded(child: TextField(
                       decoration: InputDecoration(
                           labelText: (" Create Group ID"),
                           hintText: ("Enter Group ID"),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5.0),
                           )
                       ),
                     )
                     ),]
                   )
               ),
               Padding(
                   padding:EdgeInsets.only(top:5.0,bottom: 5.0,left: 10.0,right: 10.0),
                   child:Row(children: <Widget>[
                     Expanded(
                         child: ElevatedButton(
                           child: Text('Create'),
                           onPressed:(){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Chat()));
                           },
                   style: ElevatedButton.styleFrom(
                     primary: Colors.teal,
                         )
                     )
                     )])),



    ]),

    ));
  }
}