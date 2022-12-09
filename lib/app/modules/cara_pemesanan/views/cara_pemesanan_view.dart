import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_app/app/modules/home/views/home_view.dart';

import '../controllers/cara_pemesanan_controller.dart';

class CaraPemesananView extends GetView<CaraPemesananController> {
  const CaraPemesananView({Key? key}) : super(key: key);
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
        title: Text("CARA PEMESANAN"),
        foregroundColor: Color.fromARGB(255, 204, 30, 143),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Center(
                child: Text(
              'CARA PEMESANAN',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              '1. Klik aplikasi dan login sesuai id dan password yang telah di buat',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '2. Klik tombol kategori produk, kemudian isi berapa banyak produk yang akan kamu pesan, jika sudah benar klik tombol order',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '3. Langkah selanjutnya klik tombol orderan anda, sesudah itu kalau memang sudah pas langsung aja klik tombol checkout.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '4. Terakhir masuk ke menu nota, disana kamu akan diminta konfirmasi pembayaran',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
