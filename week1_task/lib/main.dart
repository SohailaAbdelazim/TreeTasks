import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
// package error solution : delete lock --> then in terminal refetch depndies by : flutter pub get

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
        body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  child: Container(
                    color: Colors.red,
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Container(
                      color: Colors.green,
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    child: Container(
                      color: Colors.blue,
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
              Container(
                child: Container(
                  color: Colors.black,
                  height: 150,
                  width: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
