import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_app/app/modules/home/views/home_view.dart';

import '../controllers/orderan_controller.dart';

class OrderanView extends GetView<OrderanController> {
  const OrderanView({Key? key}) : super(key: key);
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
        title: Text("ORDERAN ANDA"),
        foregroundColor: Color.fromARGB(255, 204, 30, 143),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.grey[200]),
                    title: const Text("Ibuprovin Sirup"),
                    subtitle: const Text("Rp. 15.000"),
                    trailing: SizedBox(
                      width: 120.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Card(
                            color: Colors.grey[800],
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "1",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.grey[800],
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 204, 30, 143),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeView()));
              },
              child: Container(
                width: 200,
                height: 50,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "CheckOut",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
