import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:new1/tabs/account/privacy_policy.dart';
import 'package:new1/tabs/account/share_dukaan_app.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../test.dart';
import 'edit_business_detials_page.dart';
import 'how_to_use_dukan_app.dart';

class BottomAccountPage extends StatefulWidget {
  @override
  _BottomAccountPageState createState() => _BottomAccountPageState();
}

class _BottomAccountPageState extends State<BottomAccountPage> {
  bool isActive = true;
  bool loading = false;
  int progressValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.all(14),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blueAccent,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Support',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              _showMyDialog();
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white70.withOpacity(.5),
                      borderRadius: BorderRadius.circular(7.1),
                      border: Border.all(
                        width: .5,
                      )),
                  child: Image(
                    height: 70,
                    width: 75,
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        'https://mydukaan.io/images/store-person-1.jpg'),
                  ),
                  width: 75,
                  height: 75,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dukan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            child: Text(
                              'Edit business details',
                              style: TextStyle(color: Colors.blueAccent),
                              textWidthBasis: TextWidthBasis.longestLine,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EditBusinessDetails()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
            indent: 16,
            endIndent: 17,
            color: Colors.grey,
          ),
          Container(
            height: 45,
            alignment: Alignment.topLeft,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              title: Text('Share Dukaan App', style: TextStyle(fontSize: 14)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShareDukaanApp(),
                    ));
              },
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              leading: Icon(Icons.share_sharp),
            ),
          ),
          Container(
            height: 45,
            alignment: Alignment.topLeft,
            child: ListTile(
              dense: true,
              leading: Icon(Icons.notifications),
              trailing: Switch(
                onChanged: (value) {
                  setState(() {
                    isActive = value;
                  });
                  if (value == true) {
                    final snackBar = SnackBar(
                      content: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Full Screen Notification is ON now!',
                          ),
                        ],
                      ),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                  } else {
                    final snackBar = SnackBar(
                      content: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Full Screen Notification is OFF now!'),
                        ],
                      ),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                  }
                },
                value: isActive,
              ),
              title: Text(
                'Full Screen Notification',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Container(
            height: 45,
            alignment: Alignment.topLeft,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              title: Text(
                'Remove Dukaan Branding',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {
                _showMyDialogRemove_Dukaan_Branding();
              },
              leading: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          Container(
            height: 45,
            alignment: Alignment.topLeft,
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              dense: true,
              title: Text(
                'How to use Dukan App',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HowToUseDukaanApp(),
                  ),
                );
              },
              leading: Icon(Icons.video_collection_outlined),
            ),
          ),
          Container(
            height: 45,
            alignment: Alignment.topLeft,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              title: Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacyPolicy(),
                  ),
                );
              },
              leading: Icon(Icons.lock_outline_rounded),
            ),
          ),
          Container(
            height: 45,
            alignment: Alignment.topLeft,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              title: Text(
                'Rate Us',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {
                _showMyDialogRatUs();
              },
              leading: Icon(Icons.star_outline),
            ),
          ),
          Container(
            height: 45,
            alignment: Alignment.topLeft,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              title: Text(
                'Sign Out',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((10))),
                      height: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 160,
                                ),
                                Text(
                                  'Sign Out',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                SizedBox(
                                  height: 40,
                                )
                              ],
                            ),
                            Text('Are you want to sign out?'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CupertinoButton(
                                color: Colors.red,
                                child: Text('Sign Out'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              leading: Icon(Icons.logout),
            ),
          ),
          Expanded(
            child: new Container(
              height: 30,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text('OUR PROMISE'),
                  ],
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 3),
                                  child: SizedBox(
                                    child: Container(
                                      color: Colors.blue.withOpacity(.2),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.assignment_turned_in_outlined,
                                          size: 20,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '100% Safe & Free',
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                children: [
                                  Container(
                                    color: Colors.deepOrangeAccent
                                        .withOpacity(.2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.backup_sharp,
                                        size: 20,
                                        color: Colors.deepOrangeAccent,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Text('Auto Data Backup'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(15),
          titlePadding: EdgeInsets.all(10),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Choose support type',
                style: TextStyle(fontSize: 15),
              ),
              GestureDetector(
                child: Icon(Icons.clear_outlined),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    child: Column(
                      children: [
                        Icon(Icons.chat_bubble_outline_outlined),
                        Text(
                          'Live Chat',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                Container(
                  width: 1,
                  height: 35,
                  color: Colors.grey,
                ),
                GestureDetector(
                  child: Container(
                    child: Column(
                      children: [
                        Icon(Icons.call_outlined),
                        Text(
                          'Phone Call',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    launch(
                        "tel:+91 9717065485");
                  },

                ),
              ],
            ),
          ),
          actions: <Widget>[],
        );
      },
    );
  }

  Future<void> _showMyDialogRatUs() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: AlertDialog(
            title: Column(
              children: [
                Text('Rate Us'),
              ],
            ),
            content: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.star_border_purple500_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star_border_purple500_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star_border_purple500_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star_border_purple500_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showMyDialogRemove_Dukaan_Branding() async {
    return showDialog<void>(
      context: context,
      useSafeArea: true,

      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 120),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Refer 5 friends to remove the Dukaan Brending for FREE!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .85,
                  decoration: BoxDecoration(
                    color: Colors.indigo.withOpacity(.9),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Store made with',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'dukaan',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'DOWNLOAD APP',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: new Text(
                    "0/5",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 20),
                  ),
                  progressColor: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('YOUR STATUS'),
                SizedBox(
                  height: 45,
                ),
                CupertinoButton(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: CupertinoButton(
                          child: Text(
                            'Refer a friend',
                            style: TextStyle(color: Colors.black),
                          ),
                          color: Colors.deepOrange,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Shimmer.fromColors(
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.7,
                              color: Colors.white24,
                            ),
                            baseColor: Colors.transparent,
                            highlightColor: Colors.white),
                      )
                    ],
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(0),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Note: Your friend should at list add 1 product after creating a store ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}
