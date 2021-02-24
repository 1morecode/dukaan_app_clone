import 'package:flutter/material.dart';

import 'shimmer.dart';

class ThisMonth extends StatefulWidget {
  @override
  _ThisMonthState createState() => _ThisMonthState();
}

class _ThisMonthState extends State<ThisMonth> {
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
