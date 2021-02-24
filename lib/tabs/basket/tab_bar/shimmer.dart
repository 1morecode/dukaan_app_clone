import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Shimmer.fromColors(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        baseColor: Colors.grey[100],
                        highlightColor: Colors.grey[200],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Shimmer.fromColors(
                              child: Container(
                                height: 13,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              baseColor: Colors.grey[100],
                              highlightColor: Colors.grey[200],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Shimmer.fromColors(
                              child: Container(
                                height: 12,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              baseColor: Colors.grey[100],
                              highlightColor: Colors.grey[200],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Shimmer.fromColors(
                              child: Container(
                                height: 18,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              baseColor: Colors.grey[100],
                              highlightColor: Colors.grey[200],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Shimmer.fromColors(
                              child: Container(
                                height: 15,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              baseColor: Colors.grey[100],
                              highlightColor: Colors.grey[200],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 15,
                    color: Colors.grey.withOpacity(.5),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Shimmer.fromColors(
                        child: Container(
                          height: 15,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        baseColor: Colors.grey[100],
                        highlightColor: Colors.grey[200],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
