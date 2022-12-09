import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_app/app/modules/home/views/home_view.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeView()));
            },
            icon: Image.asset('assets/3.png')),
        title: Text("CARA ORDER"),
        foregroundColor: Color.fromARGB(255, 204, 30, 143),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            
          ],
        ),
      ),
    );
  }
}
