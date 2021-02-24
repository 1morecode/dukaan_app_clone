import 'package:flutter/material.dart';

class MarketingCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  MarketingCard(this.title, this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.02,),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width*0.45,
        height: MediaQuery.of(context).size.width*0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Icon(icon,size: 50,color: color,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.white,

              ),
              width: 75,
              height: 75,
            ),
            Container(padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
