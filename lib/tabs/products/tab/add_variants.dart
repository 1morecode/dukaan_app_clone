import 'dart:ui';

import 'package:color_parser/color_parser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:new1/tabs/products/tab/util/card_piker_util.dart';
import 'package:new1/tabs/products/tab/widget/model/size_model.dart';
import 'package:new1/tabs/products/widget/add_another_size_card.dart';
import 'util/color_picker_util.dart';

class AddVariants extends StatefulWidget {
  @override
  _AddVariantsState createState() => _AddVariantsState();
}

class _AddVariantsState extends State<AddVariants> {
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  var _sizeController = TextEditingController();

  var _mrpController = TextEditingController();

  var _sellingPries = TextEditingController();

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Add Variants'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ExpansionTile(
                collapsedBackgroundColor: Colors.white,
                title: Text(
                  'Size',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                childrenPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CardPiker.anotherSizeCard[index],
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Spacer(),
                                GestureDetector(
                                  child: Text(
                                    'DELETED',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      CardPiker.anotherSizeCard.removeAt(index);
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: CardPiker.anotherSizeCard.length,
                  ),
                  Column(
                    children: [
                      TextField(
                        controller: _sizeController,
                        decoration: InputDecoration(
                          labelText: 'Size 1',
                        ),
                      ),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _mrpController,
                                decoration: InputDecoration(
                                  labelText: 'MRP',
                                ),
                              ),
                            ),
                            new SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                controller: _sellingPries,
                                decoration: InputDecoration(
                                    labelText: 'Selling Price',
                                    helperStyle: TextStyle(fontSize: 200)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                    width: 170,
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1)),
                      onPressed: () {
                        setState(() {
                          CardPiker.anotherSizeCard.add(AddAnotherSizeCard(
                              SizeModel(_sizeController.text,
                                  _mrpController.text, _sellingPries.text)));
                          _sizeController.clear();
                          _mrpController.clear();
                          _sellingPries.clear();
                        });

                      },
                      child: Text('Add another size'),
                      splashColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
                initiallyExpanded: true,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
              child: ExpansionTile(
                title: Text(
                  'Colors',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        ColorParser parser = ColorParser.rgb(
                            ColorPiker.list[index].red,
                            ColorPiker.list[index].green,
                            ColorPiker.list[index].blue);
                        print((parser.toName()));
                        return Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: ColorPiker.list[index],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('${parser.toName()}'),
                            SizedBox(
                              width: 195,
                            ),
                            GestureDetector(
                              child: Text(
                                'DELETE',
                                style: TextStyle(color: Colors.red),
                              ),
                              onTap: () {
                                setState(() {
                                  ColorPiker.list
                                      .remove(ColorPiker.list[index]);
                                });
                              },
                            )
                          ],
                        );
                      },
                      itemCount: ColorPiker.list.length),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 26,
                    width: 175,
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1)),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Pick a color!'),
                              content: SingleChildScrollView(
                                child: MultipleChoiceBlockPicker(
                                  availableColors: ColorPiker.availablecolor,
                                  pickerColors: ColorPiker.list,
                                  onColorsChanged: (val) {
                                    setState(() {
                                      ColorPiker.list = val;
                                    });
                                    print(val);
                                  },
                                ),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: const Text('Got it'),
                                  onPressed: () {
                                    setState(() => currentColor = pickerColor);
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Add another color'),
                      splashColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
                initiallyExpanded: true,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Save and continue'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}













// class CheckTextFieldWidget {
//   var _sizeController = TextEditingController();

  // var _mrpController = TextEditingController();
  //
  // var _sellingPries = TextEditingController();
  //
  // checkTextFieldEmptyOrNot() {
  //   Creating 3 String Variables.
    // String text1, text2, text3;
    //
    // Getting Value From Text Field and Store into String Variable
    // text1 = _sizeController.text;
    // text2 = _mrpController.text;
    // text3 = _sellingPries.text;
    //
    // Checking all TextFields.
    // if (text1 == '' || text2 == '' || text3 == '') {
    //   Put your code here which you want to execute when Text Field is Empty.
      // print('Text Field is empty, Please Fill All Data');
    // } else {
    //   Put your code here, which you want to execute when Text Field is NOT Empty.
      // print('Not Empty, All Text Input is Filled.');
    // }
  // }
// }
