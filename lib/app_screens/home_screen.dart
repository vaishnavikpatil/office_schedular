import 'package:flutter/material.dart';
import 'package:office_schedular/app_screens/login_screen.dart';
import 'package:office_schedular/app_screens/profile_screen.dart';
import 'package:office_schedular/app_screens/groups_screen.dart';

import 'package:office_schedular/app_screens/calendar_screen.dart';
import 'package:office_schedular/app_screens/settings_screen.dart';
import 'package:office_schedular/app_screens/todo_screen.dart';
import 'package:office_schedular/app_screens/About_app.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  HomeState();
  }
}

class  HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Office Schedular'),
      ),
      drawer: NavigationDrawerWidget(),
      body:Todo(),
    );
  }
}


class  NavigationDrawerWidget extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.teal,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: "Profile",
              icon: Icons.person,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 12),
            Divider(color: Colors.white54),
            const SizedBox(height: 12),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "Groups",
              icon: Icons.group_add,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "Calendar",
              icon: Icons.calendar_today,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "Updates",
              icon: Icons.update,
              onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "Contact us",
              icon: Icons.help,
              onClicked: () => selectedItem(context, 6),
            ),
        const SizedBox(height: 24),
        buildMenuItem(
          text: "Logout",
          icon: Icons.logout,
          onClicked: () => selectedItem(context,7),
        )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }){
    final color =Colors.white;
    return ListTile(
      leading: Icon(icon,color:color),
      title:Text(text,style: TextStyle(color: color)),
      onTap: onClicked,
    );
  }
  void selectedItem(BuildContext context,int index){
    Navigator.of(context).pop();
    switch(index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Profile(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Groups(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Calendar(),
        ));
        break;

      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Update(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Aboutapp(),
        ));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>LoginPage(),
        ));
        break;
    }
  }
}
