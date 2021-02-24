import 'package:flutter/material.dart';
import 'package:new1/tabs/basket/util/basket_util.dart';

import '../util/basket_util.dart';

class PoUpUpMenuButton extends StatefulWidget {
  @override
  _PoUpUpMenuButtonState createState() => _PoUpUpMenuButtonState();
}

class _PoUpUpMenuButtonState extends State<PoUpUpMenuButton> {
  // List<String> listOfPoUpUpMenuButton = ["All", "Pending","Accepted","Rejected","Shipped","Cancelled","Delivered","Failed"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton(
        onSelected: (value) {
          setState(() {
            BasketUtil.value = value.toString();
          });
          print((BasketUtil.value));
        },
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context) {
          return BasketUtil.list.map((link) {
            return PopupMenuItem(
              textStyle:
                  TextStyle(color: Colors.black87),
              height: 35,
              value: link,
              child: Row(
                children: [
                  Icon(Icons.circle,size: 18,color: Color(int.parse("0xFF${link.color}")),),
                  SizedBox(width: 5,),
                  Text(link.title),
                  Text(link.id),
                ],
              ),
            );
          }).toList();
        },
      ),
    );
  }
}
