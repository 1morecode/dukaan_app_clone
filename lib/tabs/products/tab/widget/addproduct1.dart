import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../add_new_products.dart';

class AddProduct1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Product'),
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          CupertinoButton(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text('Continue'),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddProducts(),
                ),
              );
            },
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
