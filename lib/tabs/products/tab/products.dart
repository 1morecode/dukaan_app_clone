import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/tabs/basket/tab_bar/shimmer.dart';
import 'package:new1/tabs/products/tab/edit_product.dart';
import 'package:new1/tabs/products/widget/products_card.dart';

import 'add_new_products.dart';
import 'widget/addproduct1.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
            : Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    child: GestureDetector(child: ProductCard(),onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProduct()));
                    },),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoButton(
                      child: Text(
                        'Add new product',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddProduct1(),
                          ),
                        );
                      },
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ));
  }
}
