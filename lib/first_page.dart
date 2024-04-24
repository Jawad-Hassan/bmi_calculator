import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_cal.dart';


class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int height = 100;
  int weight = 50;
  int age = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),),
        ),
        body: Column(
          children: [
            Expanded(child: GestureDetector(

              onTap: () {
                print('Male click');

              },
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('MALE', style: TextStyle(
                            fontSize: 18,
                          ),),
                        ],
                      ),
                      margin: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print('Female click');
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 80,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('FEMALE', style: TextStyle(
                              fontSize: 18,
                            ),),
                          ],
                        ),
                        margin: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('HEIGHT')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,

                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'cm',
                        ),

                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 0,
                      max: 200,
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey.shade800,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
                margin: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            Expanded(child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Colors.grey.shade800,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),

                            ),
                            SizedBox(width: 10),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: Colors.grey.shade800,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),

                            ),
                          ],
                        ),

                      ],
                    ),
                    margin: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Colors.grey.shade800,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),

                            ),
                            SizedBox(width: 10),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Colors.grey.shade800,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),

                            ),
                          ],
                        ),

                      ],
                    ),
                    margin: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ],
            )),
            GestureDetector(
              onTap: () {
                BmiCalculate obj = BmiCalculate(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    result(
                      bmi: obj.findBMI(),
                      status: obj.ShowData(),
                    ),),);
              },
              child: Container(
                child: Center(child: Text('CALCULATE', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),),),
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: kBottomNavigationBarHeight,
              ),
            )
          ],

        )
    );
  }
}
