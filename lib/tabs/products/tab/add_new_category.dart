import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1),
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back_outlined),onPressed: (){
        Navigator.of(context).pop();
      },),
        title: Text('Add Category'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Card(
                child: Container(
                  child: Icon(Icons.camera_alt_outlined),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Add Category image'),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Category Name'),
            ),
            Expanded(
              child: Container(),
            ),
            Center(
              child: CupertinoButton(
                child: Text('Create'),padding: EdgeInsets.symmetric(horizontal: 40),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
