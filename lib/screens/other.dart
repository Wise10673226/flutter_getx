import 'package:flutter_web_dashboard_/controllers/counterController.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                  "Screen was clicked ${_counterController.counter.value} times")),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Go to home screen")),
          )
        ],
      ),
    );
  }
}
