import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:math';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shimmer/shimmer.dart';

import '../../test.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

enum RadioButtonValue { upi, bank }

class _PaymentsState extends State<Payments> {
  List<String> imageslist = const [
    'assets/images/download.jpg',
    'assets/images/download (1).jpg',
    'assets/images/download (2).jpg',
    'assets/images/download (3).jpg',
  ];

  RadioButtonValue _radioButton = RadioButtonValue.upi;

  final _uPI = GlobalKey<FormState>();
  final _accountHolderNameOfUPI = GlobalKey<FormState>();
  final _accountHolderNameOfBank = GlobalKey<FormState>();
  final _accountNumber = GlobalKey<FormState>();
  final _iFSCCode = GlobalKey<FormState>();
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {
                _showMyDialogRemove_Dukaan_Branding(context);
              })
        ],
        centerTitle: true,
        title: Text('Online Payments'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .2,
                child: Swiper(
                  itemBuilder: (BuildContext cts, int index) {
                    return Image.asset(
                      imageslist[index],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: imageslist.length,
                  autoplay: true,
                  duration: 500,
                  pagination: SwiperPagination(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Text('VERIFY USING'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 0),
                            horizontalTitleGap: 0,
                            title: const Text('UPI ID'),
                            leading: Radio(
                              value: RadioButtonValue.upi,
                              groupValue: _radioButton,
                              onChanged: (RadioButtonValue value) {
                                setState(() {
                                  _radioButton = value;
                                });
                              },
                            ),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 0),
                            horizontalTitleGap: 0,
                            title: const Text('Bank Details'),
                            leading: Radio(
                              value: RadioButtonValue.bank,
                              groupValue: _radioButton,
                              onChanged: (RadioButtonValue value) {
                                setState(
                                  () {
                                    _radioButton = value;
                                  },
                                );
                              },
                            ),
                          ),
                          flex: 2,
                        ),
                      ],
                    ),
                    _radioButton == RadioButtonValue.upi
                        ? Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                child: Form(
                                  key: _uPI,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Enter UPI ID *'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                child: Form(
                                  key: _accountHolderNameOfUPI,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Account Holder Name *'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images/bhim.jpg'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/google_pay.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/phonep.jpg'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images/paytm.jpg'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                child: Form(
                                  key: _accountHolderNameOfBank,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Account Holder Name*'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                child: Form(
                                  key: _accountNumber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Account Number *'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                child: Form(
                                  key: _iFSCCode,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'IFSC Code *'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                    SizedBox(
                      height: 100,
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Checkbox(
                          value: _checked,
                          onChanged: (value) {
                            setState(
                              () {
                                _checked = value;
                              },
                            );
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('I accept all'),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Text(
                            'terms & conditions',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Center(
                        child: CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 150),
                          color: Colors.blue,
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>TestYourSelf()));
                          },
                          child: Text('Submit'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialogRemove_Dukaan_Branding(BuildContext context) async {
    return showDialog<void>(
      context: context,
      useSafeArea: true,

      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'How it work',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      child: Container(
                          padding: EdgeInsets.all(8), child: Icon(Icons.clear)),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .85,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue[900]),
                    color: Colors.indigo.withOpacity(.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('CUSTOMER PAYS ONLINE FOR THE ORDER')],
                  ),
                ),
                Container(
                  width: 1,
                  height: 60,
                  color: Colors.black,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [

                    Container(margin: EdgeInsets.only(top: 15),
                      height: 80,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black54),
                      ),
                      child: Center(
                        child: Text(
                          '₹300',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.5),
                        border: Border.all(
                          color: Colors.deepOrange,
                        ),
                        color: Colors.deepOrange[50],
                      ),
                      child: Center(
                          child: Text(
                            'AMOUNT ON HOLD',
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          )),
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 25,
                      width: 140,
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 35,
                  color: Colors.black,
                ),
                Text('After the order is @ Delivered'),
                Container(
                  width: 1,
                  height: 45,
                  color: Colors.black,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(.3),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.green[800],
                    ),
                  ),
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'AMOUNT GATE CREDITED TO TOUR BANK ACCOUNT',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '⚡',
                            style: TextStyle(color: Colors.green, fontSize: 25),
                          ),
                          Text(
                            'INSTANTLY',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}

// Validate returns true if the form is valid, or false
// otherwise.
// if (_formKey.currentState.validate()) {
// If the form is valid, display a Snackbar.
// Scaffold.of(context)
//     .showSnackBar(SnackBar(content: Text('Processing Data')));
// }

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: 5,
              height: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor = Colors.transparent;
  Color completeColor;
  double width;

  MyPainter({this.completeColor, this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Paint complete = new Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = new Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var percent = (size.width * 0.001) / 2;

    double arcAngle = 2 * pi * percent;
    print("$radius - radius");
    print("$arcAngle - arcAngle");
    print("${radius / arcAngle} - divider");

    for (var i = 0; i < 8; i++) {
      var init = (-pi / 2) * (i / 2);

      canvas.drawArc(new Rect.fromCircle(center: center, radius: radius), init,
          arcAngle, false, complete);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
