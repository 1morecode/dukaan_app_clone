import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new1/tabs/basket/tab_bar/shimmer.dart';
import 'package:new1/tabs/products/widget/categories_card.dart';

import 'add_new_category.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
          : Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CategoryCard(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoButton(
                      child: Text(
                        'Add new category',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddNewCategory(),
                          ),
                        );
                      },
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
