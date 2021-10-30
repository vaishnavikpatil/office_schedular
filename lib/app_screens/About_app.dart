import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Aboutapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutappState();
  }
}

class AboutappState extends State<Aboutapp> {
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar:AppBar(
            backgroundColor: Colors.teal,
            title: Text('Contact Us'),

          ) ,
          body: ListView(
            children: [
              Container(
                height: 100,
              ),
              Container(
                height: 50,
                child: Text('Contact Us',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 35,
                  child: Text(' For help or any queries feel free to contact us',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 35,
                  child: InkWell(
                      child: Text('https://chat.whatsapp.com/BpNrpfSQLzc0Tc5TzVH555',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.teal,
                          decoration: TextDecoration.underline,
                        ),),
                      onTap: () => launch('https://chat.whatsapp.com/BpNrpfSQLzc0Tc5TzVH555')
                  ),
                ),
              ),
              Container(
                height: 40,
                child: Text('                                       OR',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Container(
                height: 55,
                child: Text('          You can send us a email on our email-id by \n      clicking below given link:',
                  style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 35,
                  child: InkWell(
                      child: Text('OfficeScheduler1@gmail.com',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.teal,
                          decoration: TextDecoration.underline,
                        ),),
                      onTap: () => launch('https://mail.google.com/mail/u/0/?tab=wm&ogbl#inbox?compose=GTvVlcSGLPkPTBdgBFRmQCznJtbDsMMCDrWnLxPkbQPmNHVqrJDsrPrXHXkHSSrtmLQnCWlWxWnWL')
                  ),
                ),
              ),


            ],
          ),
        );
  }
}