import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool switchOn = false;
  void changeSwitchState(bool state) {
    setState(() {
      switchOn = !switchOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 100,
                        child: Card(
                          child: Image.network(
                            'https://images-na.ssl-images-amazon.com/images/I/812kVuBZfyL._SL1500_.jpg',
                            height: 100,
                            width: 80,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(width: 1, color: Colors.grey)),
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Aara Computer 4 Gb',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('1 piece'),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹100 ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '₹200',
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'In stock',
                                  style: TextStyle(color: Colors.green),
                                ),
                                Switch(
                                  value: switchOn,
                                  activeColor: Colors.red[600],
                                  activeTrackColor: Colors.red[200],
                                  inactiveThumbColor: Colors.blue[200],
                                  inactiveTrackColor: Colors.blue[100],
                                  onChanged: changeSwitchState,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    height: 15,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share_sharp,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Share Category'),
                    ],
                  ),onTap: (){
                    _showMyDialog(context);
                  },),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}

Future<void> _showMyDialog(context) async {
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
              'Share category as',
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
                      Icon(Icons.picture_as_pdf_outlined),
                      Text(
                        'PDF',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Share.share('check out my website https://example.com');
                },
              ),
              SizedBox(width: 2,),
              Container(
                width: 1,
                height: 35,
                color: Colors.grey,
              ),
              GestureDetector(
                child: Container(
                  child: Column(
                    children: [
                      Icon(Icons.image_outlined),
                      Text(
                        'Text + Image',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Share.share('check out my website https://example.com');
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
