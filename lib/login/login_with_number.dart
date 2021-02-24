import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pinput/pin_put/pin_put.dart';

import 'login_with_business_details.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  int start = 0;
  var _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height-50,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Scaffold(resizeToAvoidBottomInset: false,
                body: Padding(
                  padding: const EdgeInsets.only(bottom: 138),
                  child: Image.network(
                    'https://mydukaan.io/images/store-person-1.jpg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Container(
                color: Colors.black12,
              ),
              Scaffold(
                resizeToAvoidBottomInset: true,
                backgroundColor: Colors.transparent,
                body: Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/dukaan_logo.png',
                        ),
                        height: 100,
                        width: 180,
                      ),
                      Text(
                        'TRUSTED BY 37.2 LAKH BUSINESSES',
                        style: TextStyle(color: Colors.white, wordSpacing: 5),
                      ),
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Text(
                        'Launch your own online store in just 30 seconds for FREE',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      start == 0
                          ? Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Card(
                            borderOnForeground: true,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: TextFormField(
                                    controller: _numberController,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your mobile number',
                                      prefix: Text('+91'),
                                    ),
                                    keyboardType: TextInputType.number,
                                    maxLength: 10,
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                CupertinoButton(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 150),
                                  child: Text('Start'),
                                  onPressed: () {
                                    setState(() {
                                      start = 1;
                                    });
                                  },
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 13,
                                )
                              ],
                            )),
                      )
                          : Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Card(
                            borderOnForeground: true,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Icon(Icons.arrow_back),
                                    onTap: () {
                                      setState(() {
                                        start = 0;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Pleas enter the 6-digit code send to you at',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '+91 ${_numberController.text}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  PinPut(
                                    fieldsCount: 6,


                                    submittedFieldDecoration: _pinPutDecoration.copyWith(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    selectedFieldDecoration: _pinPutDecoration,
                                    followingFieldDecoration: _pinPutDecoration.copyWith(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: Colors.deepPurpleAccent.withOpacity(.5),
                                      ),
                                    ),

                                    onSubmit: (value) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              LoginWithBusinessDetails(),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Resend code in 29 seconds'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),);
  }
}
