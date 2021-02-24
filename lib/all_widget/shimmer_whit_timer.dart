import 'package:flutter/material.dart';
import 'package:new1/tabs/basket/tab_bar/all_time.dart';
import 'package:new1/tabs/basket/tab_bar/shimmer.dart';



class ShimmerWithTimer extends StatefulWidget {
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
    return Container(
      child: isActive
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
      ),
    );
  }
}
