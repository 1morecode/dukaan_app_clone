import 'package:flutter/material.dart';
import 'package:new1/all_widget/shimmer_whit_timer.dart';

import 'shimmer.dart';
import 'today.dart';

class LastMonth extends StatefulWidget {
  @override
  _LastMonthState createState() => _LastMonthState();
}

class _LastMonthState extends State<LastMonth> {
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
      child: Image.network(
        'https://i.pinimg.com/originals/a7/37/45/a7374590c10d5ec0b891913d303112e9.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
