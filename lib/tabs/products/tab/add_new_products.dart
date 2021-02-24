import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_variants.dart';

class AddProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Wrap(
            children: [
              Container(
                margin: EdgeInsets.all(17),
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.5),
                    borderRadius: BorderRadius.circular(7.5)),
                child: Icon(Icons.camera_alt_outlined),
              ),
              Container(
                margin: EdgeInsets.all(17),
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.5),
                    borderRadius: BorderRadius.circular(7.5)),
                child: Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.5),
                            borderRadius: BorderRadius.circular(7.5)),
                        child: ClipRRect(
                          child: Image(
                            height: 70,
                            width: 75,
                            fit: BoxFit.contain,
                            image: NetworkImage(
                                'https://i.pinimg.com/600x315/44/b6/53/44b6537b7578d7667232ce6ceb807892.jpg'),
                          ),
                        )),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.5),
                        borderRadius: BorderRadius.circular(7.5),
                      ),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        child: Icon(
                          Icons.cancel_outlined,
                          size: 18,
                          color: Colors.white,
                        ),
                        onTap: () {
                          print('gkjhgjh');
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.5),
                    borderRadius: BorderRadius.circular(7.5)),
                child: Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.5),
                            borderRadius: BorderRadius.circular(7.5)),
                        child: ClipRRect(
                          child: Image(
                            height: 70,
                            width: 75,
                            fit: BoxFit.contain,
                            image: NetworkImage(
                                'https://i.pinimg.com/600x315/44/b6/53/44b6537b7578d7667232ce6ceb807892.jpg'),
                          ),
                        )),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.5),
                        borderRadius: BorderRadius.circular(7.5),
                      ),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        child: Icon(
                          Icons.cancel_outlined,
                          size: 18,
                          color: Colors.white,
                        ),
                        onTap: () {
                          print('gkjhgjh');
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 19),
              child: Text(
                'You can still add 6 more images.',
                style: TextStyle(color: Colors.grey.withOpacity(1)),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Product Category',
              ),
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'MRP',
                      ),
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Selling Price',
                      ),
                    ),
                  ),
                  flex: 1,
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Quality'),
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Unit'),
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Product Details',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_sharp,
                          color: Colors.blue,
                        ),
                        Text(
                          'Abb Variants',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddVariants(),),);
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              height: 1,
              thickness: 2,
            ),
          ),
          CupertinoButton(
            child: Text(
              'Add Product',
            ),
            onPressed: () {},
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
