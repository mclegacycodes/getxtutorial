import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanagement/controller/tap_controller.dart';

import 'first_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TapController controller = Get.put(TapController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                    child: Text(
                  tapController.x.toString(),
                  style: const TextStyle(color: Colors.black),
                )),
              );
            }),
            GestureDetector(
              onTap: () {
                controller.increase();
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)),
                child: const Center(
                    child: Text(
                  "Tap",
                  style: TextStyle(color: Colors.black),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const FirstPage());
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)),
                child: const Center(
                    child: Text(
                  "Go to First Page",
                  style: TextStyle(color: Colors.black),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)),
                child: const Center(
                    child: Text(
                  "Tap",
                  style: TextStyle(color: Colors.black),
                )),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
