import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiscountCoupon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Discount Coupons'),
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
                  'https://content.money.com/wp-content/uploads/2021/01/2021-Money-Best-Credit-Cards.jpg?quality=85',
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
                      'Get more sales with coupons',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),

                    Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                      child: Text(
                        'Now you can create and share coupons for your store to gate more and more order on your store',
                        style: TextStyle(letterSpacing: 1.2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(child: Container(),),
                    CupertinoButton(child: Text('Create a coupon'),onPressed: (){
                      Navigator.of(context).pop();
                    },color: Colors.blue,),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
