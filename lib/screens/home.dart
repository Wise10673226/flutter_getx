import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_/controllers/counterController.dart';
import 'package:flutter_web_dashboard_/screens/other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  //below, we have to register our controllers
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Clicks: ${counterController.counter.value} ")),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(OtherScreen());
                  },
                  child: Text("Open other screen")),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increment();
          },
          child: Icon(Icons.add)),
    );
  }
}
