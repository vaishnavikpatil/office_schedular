//@dart=2.9
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:office_schedular/palatte.dart';
import '../widgets/widgets.dart';

class  LoginPage extends StatelessWidget{

@override
  Widget build(BuildContext context){
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: Center(
                      child: Text(
                          'OFFICE SCHEDULER',
                        style: kHeading,
                        textAlign: TextAlign.center,
                      ),
                    ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 20),
                            border: InputBorder.none,
                           hintText: 'Login ID e.g. abc@123',
                          hintStyle: kBodyText,

                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(FontAwesomeIcons.user,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ),
                        style: kBodyText,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    )
                  ],),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

