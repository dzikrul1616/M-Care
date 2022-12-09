import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(248, 255, 186, 238),
          body: Center(
              child: Container(
            width: Get.width * 0.5,
            height: Get.width * 0.5,
            child: Column(
              children: [
                Image.asset("assets/1.png"),
                const SizedBox(
                  height: 15.0,
                ),
                Text('M-CARE',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          )),
        ));
  }
}
