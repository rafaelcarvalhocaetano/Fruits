import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sacolao/Second.dart';
import 'package:sacolao/configs/SizeConfig.dart';


class Frutas extends StatefulWidget {
  @override
  _FrutasState createState() => _FrutasState();
}

class _FrutasState extends State<Frutas> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        _buildFrutasCard("Kiwi", "assets/kiwi.png", "98", 0xffF7DFB9, 0XffFAF0DA),
                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Second(),
                              ),
                            );
                          },
                          child: _buildFrutasCard("Avocado", "assets/avocado.png", "128", 0xffC4D4A3, 0XffE0E8CF),
                        ),
                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                        _buildFrutasCard("Manga", "assets/mango.png", "150", 0xffF6e475, 0xffF9EF80),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 42.5 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xffECEDF1),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "A Spring Suprise",
                                    style: TextStyle(
                                        fontFamily: 'OpenSans-Bold',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 1.5 * SizeConfig.textMultiplier
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "40% OFF",
                                    style: TextStyle(
                                        fontFamily: 'OpenSans-Bold',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 2.5 * SizeConfig.textMultiplier
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.green),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "FOODLY SURPRISE",
                                        style: TextStyle(
                                          fontFamily: 'OpenSans-Bold',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 1.7 * SizeConfig.textMultiplier,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "Use the code above for Spring collection purchases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'OpenSans-Bold',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 1.7 * SizeConfig.textMultiplier,
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                        _buildFrutasCard("Papaya", "assets/papaya.png", "198", 0xffFFC498, 0xffFDDCC1),

                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                        _buildFrutasCard("Strawberry", "assets/strawberry.png", "928", 0xffF0AEAE, 0xffF8C6CA),
                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildFrutasCard(String name, String assets, String rate, int color, int color2) {
    return Container(
      width: 42.5 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Color(color2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add, color: Colors.grey,),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              assets,
              fit: BoxFit.contain,
              width: 30 * SizeConfig.imageSizeMultiplier,
              height: 30 * SizeConfig.imageSizeMultiplier,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              name,
              style: TextStyle(
                fontFamily: 'OpenSans-Bold',
                fontWeight: FontWeight.bold,
                fontSize: 2.5 * SizeConfig.textMultiplier
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              "Gurugram Mandi Haryana",
              style: TextStyle(
                  fontFamily: 'OpenSans-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 2.5 * SizeConfig.textMultiplier
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      rate,
                      style: TextStyle(
                        fontFamily: 'OpenSans-Bold',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        fontSize: 2.5 * SizeConfig.textMultiplier
                      ),
                    ),
                    Text(
                      "Per quitel",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.3 * SizeConfig.textMultiplier
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "View Price",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 1.3 * SizeConfig.textMultiplier
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2 * SizeConfig.heightMultiplier,),
        ],
      ),
    );
  }
}