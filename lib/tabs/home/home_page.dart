import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new1/bottom_pages/widget/drop.dart';
import 'package:new1/bottom_pages/widget/overview_card_home_page.dart';
import 'package:new1/tabs/home/view/buttom_menu.dart';
import 'package:share/share.dart';

class BottomHomePage extends StatefulWidget {
  @override
  _BottomHomePageState createState() => _BottomHomePageState();
}

class _BottomHomePageState extends State<BottomHomePage> {
  bool isActive = true;
  int _hasBeenPressed1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.withOpacity(.1),
      appBar: AppBar(
        backgroundColor: isActive ? Colors.blue : Colors.red,
        actions: [
          Switch(
            onChanged: (value) {
              setState(() {
                isActive = value;
              });
              if (value == true) {
                final snackBar = SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle_outline_outlined,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Your store is online!'),
                    ],
                  ),
                  duration: Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(
                    label: '',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              } else {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Go online after',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  child: Icon(Icons.clear),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            ),
                          ),
                          BottomRadioMenu()
                        ],
                      ),
                    );
                  },
                );
              }
            },
            value: isActive,
          ),
        ],
        title: Text('Dukaan'),
        elevation: 0,
        titleSpacing: 10,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: isActive ? Colors.blue : Colors.red,
              ),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.all(15),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Share More to Earn More',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                            'Share Your own web store link on Social Media to attract more customers daily'),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'mydukaan.io/dukaan5574',
                                style: TextStyle(
                                    color: Colors.amber[800],
                                    decoration: TextDecoration.underline),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.greenAccent[400]),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8),
                                child: GestureDetector(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.share_sharp,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Share ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    Share.share('check out my website https://example.com');
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .99,
                    height: 60,
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Add address',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              onPressed: () {

                              },
                              color: Colors.cyan[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Overview'),
                      Drop(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OverViewCardHome('ORDERS', '0'),
                    OverViewCardHome('TOTAL SALE', '₹0'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OverViewCardHome('STORE VIEWS', '0'),
                    OverViewCardHome('PRODUCT VIEWS', '0'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Active Orders,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text('View All'),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 13,
                    ),
                    MaterialButton(
                      child: Text(
                        'Pending',
                        style: TextStyle(
                            color: _hasBeenPressed1 == 0
                                ? Colors.white
                                : Colors.grey),
                      ),
                      color: _hasBeenPressed1 == 0 ? Colors.blue : Colors.white,
                      onPressed: () => setState(
                        () {
                          _hasBeenPressed1 = 0;
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    MaterialButton(
                      child: Text(
                        'Pending',
                        style: TextStyle(
                            color: _hasBeenPressed1 == 1
                                ? Colors.white
                                : Colors.grey),
                      ),
                      color: _hasBeenPressed1 == 1 ? Colors.blue : Colors.white,
                      onPressed: () => setState(
                        () {
                          _hasBeenPressed1 = 1;
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    MaterialButton(
                      child: Text(
                        'Pending',
                        style: TextStyle(
                            color: _hasBeenPressed1 == 2
                                ? Colors.white
                                : Colors.grey),
                      ),
                      color: _hasBeenPressed1 == 2 ? Colors.blue : Colors.white,
                      onPressed: () => setState(
                        () {
                          _hasBeenPressed1 = 2;
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .93,
                  height: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    height: 20,
                    width: MediaQuery.of(context).size.width * .46,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You don't have any pending orders",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
