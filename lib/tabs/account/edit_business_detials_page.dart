import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account_page.dart';

class EditBusinessDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditBusinessDetails'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.5),
                    color: Colors.blue.withOpacity(.4),
                  ),
                  height: 80,
                  width: 80,
                  child: Icon(Icons.camera_alt_outlined),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              child: Text(
                'Update store logo',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                print('Update Store logo');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(labelText: 'Store Link'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(labelText: 'Business Name'),
              keyboardType: TextInputType.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(labelText: 'Business Category'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(labelText: 'Address'),
              keyboardType: TextInputType.streetAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: FlatButton(
              child: Text(
                'Delete my account',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {},
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Expanded(
              child: CupertinoButton(
                child: Text('Save'),
                onPressed: () {
                  print('Save');
                },
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
