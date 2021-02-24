import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/bottom_pages/widget/markiting_card.dart';

class MarketingDesigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketing'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topCenter,
        child: Wrap(
          alignment: WrapAlignment.start,
          children: [
            MarketingCard('Business', Icons.archive_sharp, Colors.blue),
            MarketingCard('Promo Banners', Icons.arrow_circle_down_rounded,
                Colors.black),
            MarketingCard('WhatsApp Stories', Icons.message, Colors.green),
          ],
        ),
      ),
    );
  }
}
