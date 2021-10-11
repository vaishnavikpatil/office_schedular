import 'package:flutter/material.dart'  show Colors, MaterialApp, ThemeData, WidgetsFlutterBinding, runApp;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:office_schedular/app_screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
void main()
async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: App(),
        theme: ThemeData(
          textTheme:
          GoogleFonts.josefinSansTextTheme(),
            primaryColor: Colors.teal,
        ),
      )
  );
}

class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(child: Text('connection error'),);
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return LoginPage();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(child: Text('loading'),);
      },
    );
  }
}
