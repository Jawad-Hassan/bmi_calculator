import 'package:flutter/material.dart';


class result extends StatelessWidget {

  final String bmi;
  final String status;

  result({super.key, required this.bmi, required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(
            child:
            Text('Your Result',
                style: TextStyle
                  (fontSize: 45,
                    fontWeight:FontWeight.bold
                ),
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black26,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch ,
                children: [
                  Text(status,
                    textAlign: TextAlign.center,
                    style: TextStyle
                      (color: Colors.lightGreen,
                      fontSize: 20,
                    ),
                  ),
                  Text(bmi,
                    textAlign: TextAlign.center,
                    style: TextStyle
                      (
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Text (
                  //   'Your BMI is Normal',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //
                  //
                  //   ),
                  // ),
                ],

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            } ,
            child: Container(
              child: Center(child: Text('RE-CALCULATE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              color: Colors.green,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomNavigationBarHeight,
            ),
          ),
        ],
      ),
    );
  }
}
