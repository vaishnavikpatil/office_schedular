import 'package:flutter/material.dart';
import 'package:office_schedular/app_screens/profile_screen.dart';
import 'package:office_schedular/app_screens/groups_screen.dart';
import 'package:office_schedular/app_screens/notifications_screen.dart';
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
              text: "Notification",
              icon: Icons.notifications,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "To Do",
              icon: Icons.playlist_add_check_outlined,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "Settings",
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "About App",
              icon: Icons.help,
              onClicked: () => selectedItem(context, 6),
            ),
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
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Notifications(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Todo(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Settings(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Aboutapp(),
        ));
        break;
    }
  }
}
