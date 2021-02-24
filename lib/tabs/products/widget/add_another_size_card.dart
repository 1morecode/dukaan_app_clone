import 'package:flutter/material.dart';
import 'package:new1/tabs/products/tab/util/card_piker_util.dart';
import 'package:new1/tabs/products/tab/widget/model/size_model.dart';


class AddAnotherSizeCard extends StatefulWidget {

  final SizeModel sizeModel;



  AddAnotherSizeCard(this.sizeModel);

  @override
  _AddAnotherSizeCardState createState() => _AddAnotherSizeCardState();
}

class _AddAnotherSizeCardState extends State<AddAnotherSizeCard> {
  var size1 =TextEditingController();

  var mrp = TextEditingController();

  var selling= TextEditingController();

  @override
  void initState() {
    size1.text=widget.sizeModel.size;
    mrp.text=widget.sizeModel.mrp;
    selling.text=widget.sizeModel.sellingPries;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: size1,
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
                child: TextField(controller: mrp,
                  decoration: InputDecoration(
                    labelText: 'MRP',
                  ),
                ),
              ),
              new SizedBox(
                width: 15,
              ),
              Expanded(
                child: TextField(controller: selling,
                  decoration: InputDecoration(
                      labelText: 'Selling Price',
                      helperStyle: TextStyle(fontSize: 200)),
                ),
              )
            ],
          ),
        ),


      ],
    );
  }
}
