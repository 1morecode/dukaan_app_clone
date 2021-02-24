import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'shimmer.dart';

class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  bool active = true;

  _getResults() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
    setState(
      () {
        active = false;
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getResults();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: active
          ? ListView(
              padding: EdgeInsets.all(0),
              children: [
                ShimmerOnly(),
                ShimmerOnly(),
                ShimmerOnly(),
                ShimmerOnly(),
                ShimmerOnly(),
                ShimmerOnly(),
              ],
            )
          : new Container(
        child: Image.network(
          'https://i.pinimg.com/originals/a7/37/45/a7374590c10d5ec0b891913d303112e9.jpg',
          fit: BoxFit.cover,
        ),
      )
    );
  }
}
