import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_app/app/modules/home/views/home_view.dart';

import '../controllers/h_ubungi_controller.dart';

class HUbungiView extends GetView<HUbungiController> {
  const HUbungiView({Key? key}) : super(key: key);
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
        title: Text("HUBUNGI KAMI"),
        foregroundColor: Color.fromARGB(255, 204, 30, 143),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text('CONTACT PERSON',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.whatsapp,
                  size: 30,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('0855-1234-7654')
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.telegram_outlined,
                  size: 30,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('0855-1234-7654')
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.phone,
                  size: 30,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('021-1234-7654')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
