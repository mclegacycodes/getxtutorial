import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: (() {
          Get.back();
        }),
      )),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 100,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(16)),
              child: const Center(
                  child: Text(
                "First Page",
                style: TextStyle(color: Colors.black),
              )),
            ),
          )
        ],
      )),
    );
  }
}
