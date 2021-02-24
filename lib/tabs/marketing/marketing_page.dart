import 'package:flutter/material.dart';
import 'package:new1/tabs/marketing/store_qr_code.dart';
import 'package:shimmer/shimmer.dart';
import 'delivery_charge.dart';
import 'discount_coupon.dart';
import 'marketing_designs_page.dart';
import 'payments.dart';

class BottomMarketingPage extends StatefulWidget {
  @override
  _BottomMarketingPageState createState() => _BottomMarketingPageState();
}

class _BottomMarketingPageState extends State<BottomMarketingPage> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketing Store'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Marketing Designs'),
            leading: Icon(Icons.design_services_outlined),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MarketingDesigns(),
                ),
              );
            },
          ),
          ListTile(
            title: Row(
              children: [
                Text('Payments'),
                SizedBox(
                  height: 10,
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Shimmer.fromColors(
                      child: Text(
                        'New',
                        style: TextStyle(fontSize: 12),
                      ),
                      baseColor: Colors.white,
                      highlightColor: Colors.grey[400]),
                ),
              ],
            ),
            leading: Icon(Icons.monetization_on_outlined),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Payments(),
                ),
              );
            },
          ),
          ListTile(
            title: Row(
              children: [
                Text('Discount Coupons'),
                SizedBox(
                  height: 10,
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Shimmer.fromColors(
                      child: Text(
                        'New',
                        style: TextStyle(fontSize: 12),
                      ),
                      baseColor: Colors.white,
                      highlightColor: Colors.grey[400]),
                ),
              ],
            ),
            leading: Icon(Icons.account_balance_wallet_outlined),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DiscountCoupon(),
                ),
              );
            },
          ),
          ListTile(
            title: Row(
              children: [
                Text('My Customers'),
                SizedBox(
                  height: 10,
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Shimmer.fromColors(
                      child: Text(
                        'New',
                        style: TextStyle(fontSize: 12),
                      ),
                      baseColor: Colors.white,
                      highlightColor: Colors.grey[400]),
                ),
              ],
            ),
            leading: Icon(Icons.people_alt_outlined),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DiscountCoupon(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Store QR Code'),
            leading: Icon(Icons.qr_code),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StoreQRCode(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Delivery Charges'),
            leading: Icon(Icons.delivery_dining),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeliveryCharges(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            trailing: Switch(
              onChanged: (value) {
                setState(() {
                  isActive = value;
                });
                if (value == true) {
                  final snackBar = SnackBar(
                    content: Text(
                      'WhatsApp Support is ON now!',
                    ),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                } else {
                  final snackBar = SnackBar(
                    content: Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.blue,
                        ),
                        Text('WhatsApp Support is OFF now!'),
                      ],
                    ),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                }
              },
              value: isActive,
            ),
            title: Text('WhatsApp Chat Support'),
          ),
        ],
      ),
    );
  }
}
