import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';


class LoginWithBusinessDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Enter your business details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(

              decoration: InputDecoration(hintText: 'Business Name ',alignLabelWithHint: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Business Category'),
            ),
            Expanded(
              child: Container(),
            ),
            CupertinoButton(padding: EdgeInsets.symmetric(horizontal: 40),
              //alignment: Alignment.bottomCenter,
              child: Text('Finish'),
              onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Homepage(),), (route) => false);
              },
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
