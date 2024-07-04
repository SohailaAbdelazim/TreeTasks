// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(DevicePreview(
//     enabled: true,
//     builder: (context) => const MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BMI APP ',
//       theme: new ThemeData(scaffoldBackgroundColor: Colors.black),
//       home: Scaffold(
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                   child: Padding(
//                       padding: EdgeInsets.only(top: 10),
//                       child: Center(
//                           child: Text('BMI APP',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 40,
//                                   fontWeight: FontWeight.bold))))),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                       color: Colors.white,
//                     ),
//                     height: 140,
//                     width: 170,
//                     child: FloatingActionButton(
//                       onPressed: () {
//                         counter++
//                       },
//                       child: Icon(Icons.add),
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                       color: Colors.white,
//                     ),
//                     height: 140,
//                     width: 170,
//                   ),
//                 ],
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(20)),
//                   color: Colors.white,
//                 ),
//                 height: 160,
//                 width: 400,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(20)),
//                   color: Colors.white,
//                 ),
//                 height: 190,
//                 width: 400,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(20)),
//                   color: Colors.white,
//                 ),
//                 height: 160,
//                 width: 400,
//               ),
//               Center(
//                   child: ElevatedButton(
//                 onPressed: () {
//                   //setState(() {
//                   //  _buttonName = 'Elevated Button';
//                   //});
//                 },
//                 child: const Text('Calculate'),
//               ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:powers/powers.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int age = 0, weight = 0, height = 0;
  double resultNum = 0.0;
  Color maleIconColor = Colors.black, femaleIconColor = Colors.black;
  String resultText = 'Normal';

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    setState(() {
      if (age > 0) {
        age--;
      }
    });
  }

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void decrementWeight() {
    setState(() {
      if (weight > 0) {
        weight--;
      }
    });
  }

  void incrementHeight() {
    setState(() {
      height++;
    });
  }

  void decrementHeight() {
    setState(() {
      if (height > 0) {
        height--;
      }
    });
  }

  void changeBoy() {
    setState(() {
      maleIconColor = Colors.blue;
      femaleIconColor = Colors.black;
    });
  }

  void changeGirl() {
    setState(() {
      femaleIconColor = Colors.pink;
      maleIconColor = Colors.black;
    });
  }

  void calcBMI() {
    setState(() {
      resultNum =
          double.parse((weight / (height.squared())).toStringAsFixed(2));

      if (resultNum <= 18.4) {
        resultText = 'UnderWeight';
      } else if (resultNum >= 18.5 && resultNum <= 24.9) {
        resultText = 'Normal';
      } else if (resultNum >= 25.0 && resultNum <= 39.9) {
        resultText = 'OverWeight';
      } else {
        resultText = 'Obese';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI APP',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    'BMI APP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 140,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Text('$age',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: incrementAge,
                              icon: Icon(Icons.add),
                              color: Colors.black,
                              iconSize: 30,
                            ),
                            IconButton(
                              onPressed: decrementAge,
                              icon: Icon(Icons.remove),
                              color: Colors.black,
                              iconSize: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 140,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Weight(KG)',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Text('$weight',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: incrementWeight,
                              icon: Icon(Icons.add),
                              color: Colors.black,
                              iconSize: 30,
                            ),
                            IconButton(
                              onPressed: decrementWeight,
                              icon: Icon(Icons.remove),
                              color: Colors.black,
                              iconSize: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 160,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height(Cm)',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$height',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: incrementHeight,
                          icon: Icon(Icons.add),
                          color: Colors.black,
                          iconSize: 40,
                        ),
                        IconButton(
                          onPressed: decrementHeight,
                          icon: Icon(Icons.remove),
                          color: Colors.black,
                          iconSize: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 190,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Gender',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'I\'m a',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: changeBoy,
                          icon: Icon(Icons.male),
                          color: maleIconColor,
                          iconSize: 55,
                        ),
                        IconButton(
                          onPressed: changeGirl,
                          icon: Icon(Icons.female),
                          color: femaleIconColor,
                          iconSize: 55,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 160,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your Result Is',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    Text('$resultNum',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    Text('$resultText',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    calcBMI();
                  },
                  child: const Text('Calculate'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
