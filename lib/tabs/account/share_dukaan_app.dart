import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class ShareDukaanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Share Dukaan App'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  'https://mydukaan.io/images/store-person-1.jpg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,

                ),
                flex: 2,
              ),
              SizedBox(height: 15,),
              Expanded(flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Help other businesses',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),

                    Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                      child: Text(
                        'Share Dukaan app with your friends or family and help them digitize their business using Dukaan app.',
                        style: TextStyle(letterSpacing: 1.2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(child: Container(),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        SizedBox(child: RaisedButton(
                          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.lightBlue,width: 2),borderRadius: BorderRadius.circular(10)),

                          color: Colors.white,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share_sharp,color: Colors.lightBlue),
                              SizedBox(width: 10,),
                              Text('Share',style: TextStyle(color: Colors.lightBlue),),
                            ],
                          ),onPressed: (){
                          Share.share('check out my website https://example.com');
                        },),height: 45,width: MediaQuery.of(context).size.width*0.4,),

                        SizedBox(child: RaisedButton(
                          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.lightBlue,width: 2),borderRadius: BorderRadius.circular(10)),

                          color: Colors.blue,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share_sharp,color: Colors.white),
                              SizedBox(width: 10,),
                              Text('Share APK',style: TextStyle(color: Colors.white),),
                            ],
                          ),onPressed: (){
                          Share.share('check out my website https://example.com');
                        },),height: 45,width: MediaQuery.of(context).size.width*0.4,),
                      ],
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
