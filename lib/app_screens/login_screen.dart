import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:office_schedular/app_screens/register_screen.dart';
import 'package:office_schedular/palatte.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
           backgroundColor: Colors.transparent,
            body: SafeArea(
              child: ListView(
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
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(

                              icon: FontAwesomeIcons.user,
                              hint: 'Login e.g. abc@123',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputType: TextInputType.visiblePassword,
                              inputAction: TextInputAction.done,
                            ),
                            
                            TextButton(
                              onPressed: () {} ,
                              child: Text(
                                'Forgot Password?',
                                style: kBodyText,

                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 35,
                            ),
                            LoginButton(
                              buttonText: 'Login',
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Text(
                                '----------Or----------',
                                style: kBodyText,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                              borderRadius: BorderRadius.circular(16),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Register()));
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Text(
                                  'Register',
                                   style: kBodyText,

                              ),

                               )
                              )
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

      ],
    );
  }
}
