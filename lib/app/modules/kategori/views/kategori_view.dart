import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_app/app/modules/home/views/home_view.dart';

import '../controllers/kategori_controller.dart';

class KategoriView extends GetView<KategoriController> {
  const KategoriView({Key? key}) : super(key: key);
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
        title: Text("KATEGORI PRODUK"),
        foregroundColor: Color.fromARGB(255, 204, 30, 143),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey[400]!,
                ),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: null,
                      decoration: const InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Search",
                        hoverColor: Colors.transparent,
                      ),
                      onFieldSubmitted: (value) {},
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 110,
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
                              width: 100,
                              height: 100,
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
                                  'Stock Produk : 20',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Harga : Rp. 15.000',
                                  style: TextStyle(
                                    fontSize: 15,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 110,
                        width: 400,
                        color: Color.fromARGB(199, 200, 200, 200),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20.0,
                            ),
                            Image.asset(
                              'assets/6.png',
                              width: 100,
                              height: 100,
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
                                  'IbuProfin Tablet',
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
                                  'Stock Produk : 20',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Harga : Rp. 10.000',
                                  style: TextStyle(
                                    fontSize: 15,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
