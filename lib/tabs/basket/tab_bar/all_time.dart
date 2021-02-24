import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/tabs/basket/tab_bar/today.dart';
import 'package:share/share.dart';

import 'shimmer.dart';
class AllTime extends StatefulWidget {
  @override
  _AllTimeState createState() => _AllTimeState();
}

class _AllTimeState extends State<AllTime> {
  bool isActive = true;
  _getResults() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      isActive = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getResults();
  }

  @override
  Widget build(BuildContext context) {
    return isActive ? ListView(
      children: [
        ShimmerOnly(),
        ShimmerOnly(),
        ShimmerOnly(),
        ShimmerOnly(),
        ShimmerOnly(),
      ],
    ):Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            'https://i.pinimg.com/originals/a7/37/45/a7374590c10d5ec0b891913d303112e9.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CupertinoButton(padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text('Share Store'),
              onPressed: () {
                Share.share('check out my website https://example.com');
              },
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
