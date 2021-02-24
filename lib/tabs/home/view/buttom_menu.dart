import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/tabs/home/util/home_util.dart';

class BottomRadioMenu extends StatefulWidget {
  @override
  _BottomRadioMenuState createState() => _BottomRadioMenuState();
}

class _BottomRadioMenuState extends State<BottomRadioMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45,
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            horizontalTitleGap: 0,
            title: Text(
              '1 hour',
              style: TextStyle(fontSize: 14),
            ),
            leading: Radio(
              value: '1 hour',
              onChanged: (value) {
                setState(() {
                  HomeUtil.timeSlot = value;
                });
              },
              groupValue: HomeUtil.timeSlot,
            ),
          ),
        ),
        SizedBox(
          height: 45,
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            horizontalTitleGap: 0,
            title: Text(
              '2 hour',
              style: TextStyle(fontSize: 14),
            ),
            leading: Radio(
              value: '2 hour',
              onChanged: (value) {
                setState(() {
                  HomeUtil.timeSlot = value;
                });
              },
              groupValue: HomeUtil.timeSlot,
            ),
          ),
        ),
        SizedBox(
          height: 45,
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            horizontalTitleGap: 0,
            title: Text(
              '4 hour',
              style: TextStyle(fontSize: 14),
            ),
            leading: Radio(
              value: '4 hour',
              onChanged: (value) {
                setState(() {
                  HomeUtil.timeSlot = value;
                });
              },
              groupValue: HomeUtil.timeSlot,
            ),
          ),
        ),
        SizedBox(
          height: 45,
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            horizontalTitleGap: 0,
            title: Text(
              'Tomorrow,at same time',
              style: TextStyle(fontSize: 14),
            ),
            leading: Radio(
              value: 'Tomorrow,at same time',
              onChanged: (value) {
                setState(() {
                  HomeUtil.timeSlot = value;
                });
              },
              groupValue: HomeUtil.timeSlot,
            ),
          ),
        ),
        SizedBox(
          height: 45,
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            horizontalTitleGap: 0,
            title: Text(
              'I will go online myself',
              style: TextStyle(fontSize: 14),
            ),
            leading: Radio(
              value: 'I will go online myself',
              onChanged: (value) {
                setState(() {
                  HomeUtil.timeSlot = value;
                });
              },
              groupValue: HomeUtil.timeSlot,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Your store re-open at 01:49 PM ',
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          height: 20,
        ),
        CupertinoButton(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text('Confirm'),
          color: Colors.blue[900],
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
