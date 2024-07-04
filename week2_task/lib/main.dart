// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() { 
runApp(DevicePreview( 
	enabled: true, 
	builder: (context) => const MyApp(), 
)); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
        body: 
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: 
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:200.0), 
                      child:   
                      Container( 
                        height: 420,
                        width: 420,
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.grey.withOpacity(0.5) ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ) ,
                        child:
                        Column(
                          children: [
                            // ------------- header section ------------
                            Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(left:10.0, top:10.0), 
                                        child:   
                                          CircleAvatar(
                                          radius: 20,
                                          backgroundImage: NetworkImage("https://raw.githubusercontent.com/TREE-24/tree-network-images/main/person.jpg"),
                                          ),
                                      ),
                                  ),  
                                  Container(
                                    child: 
                                    Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right:130.0, top:10.0), 
                                              child: 
                                                Text(
                                                'Mobile Member'
                                                ),
                                            ),
                                            Container(
                                              child:
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:5), 
                                                    child: 
                                                      Text(
                                                      '2024-04-15'
                                                      ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right:140.0), 
                                                    child: 
                                                      Icon(
                                                        IconData(0xe4f0, fontFamily: 'MaterialIcons'),
                                                        color: Colors.black,
                                                        size: 18.0,
                                                      ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                  
                                  Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(right:10.0 ,top:10.0), 
                                        child: 
                                          Icon(
                                            IconData(0xe402, fontFamily: 'MaterialIcons'),
                                            color: Colors.black,
                                            size: 36.0,
                                          ),

                                      )
                                      
                                  ), 
                                ],                            
                            ),
                            
                            //----- text post --------
                            Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(right:300.0, top:10.0), 
                                        child: 
                                          Text(
                                          'TREE'
                                          ),

                                      )
                                      
                            ),
                    

                            // --------------- post iamge ----------------- 
                            Container( 
                              child:
                              Image.network("https://raw.githubusercontent.com/TREE-24/tree-network-images/main/tree-logo.png")
                            ), 
                            
                            // -------------------- comment , like section ---------------
                            Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(left:20.0), 
                                        child:   
                                          Icon(
                                            IconData(0xe65c, fontFamily: 'MaterialIcons'),
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                      ),
                                  ), 
                                  SizedBox(width: 5), // Add space between the Containers
                                  Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(), 
                                        child: 
                                          Text(
                                          'Like'
                                          ),
                                      )
                                  ),
                                  SizedBox(width: 40), 
                                  Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(), 
                                        child: 
                                          Icon(
                                            IconData(0xe17e, fontFamily: 'MaterialIcons'),
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                      )  
                                  ),
                                  SizedBox(width: 5),
                                  Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(), 
                                        child: 
                                          Text(
                                          'Comment'
                                          ),
                                      )
                                  ),
                                  SizedBox(width: 40),
                                  Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(), 
                                        child: 
                                          Icon(
                                            IconData(0xe593, fontFamily: 'MaterialIcons'),
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                      )  
                                  ),
                                  SizedBox(width: 5),
                                  Container( 
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(right:10.0), 
                                        child: 
                                          Text(
                                          'Share'
                                          ),
                                      )
                                  ),
                                ],                            
                            ),
                          ],
                        )
                    ),
                    ),
                      
                    ],

              ),
              ),
    ),
  );
}
}
