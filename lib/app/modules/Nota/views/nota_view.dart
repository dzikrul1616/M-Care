import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_app/app/modules/home/views/home_view.dart';

import '../controllers/nota_controller.dart';

class NotaView extends GetView<NotaController> {
  const NotaView({Key? key}) : super(key: key);
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
        title: Text("NOTA ANDA"),
        foregroundColor: Color.fromARGB(255, 204, 30, 143),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 140,
                        width: 400,
                        color: Color.fromARGB(199, 200, 200, 200),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20.0,
                            ),
                            Image.asset(
                              'assets/5.png',
                              width: 80,
                              height: 140,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'IbuProfin Sirup',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 204, 30, 143),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Jumlah Order : 5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Harga satuan : Rp. 15.000',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Total harga : Rp. 75.000',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Tanggal order : 9-12-2022',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Status : Menunggu pembayaran',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
