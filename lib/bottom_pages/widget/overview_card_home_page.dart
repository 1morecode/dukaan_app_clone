import 'package:flutter/material.dart';

class OverViewCardHome extends StatelessWidget {
  final String title;
  final String amount;

  OverViewCardHome(this.title,this.amount);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        height: 20,
        width: MediaQuery.of(context).size.width * .46,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 10),
              child: Text(title),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 3),
              child: Text(
                amount,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
