import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeliveryCharges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Charges'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('DELIVERY CHARGE PER ORDER'),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pries',
                  prefixText: "Rs",prefixStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text('FREE DELIVERY ABOVE'),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pries',
                  prefix: Text(
                    '%%',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: CupertinoButton(
                child: Text('Save changess'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
