import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:uas_app/app/modules/HUbungi/views/h_ubungi_view.dart';
import 'package:uas_app/app/modules/Nota/views/nota_view.dart';
import 'package:uas_app/app/modules/Orderan/views/orderan_view.dart';
import 'package:uas_app/app/modules/cara_pemesanan/views/cara_pemesanan_view.dart';
import 'package:uas_app/app/modules/kategori/views/kategori_view.dart';
import 'package:uas_app/app/modules/login/views/login_view.dart';
import 'package:uas_app/app/modules/order/views/order_view.dart';
import 'package:uas_app/app/modules/profil/views/profil_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(user.displayName ?? ''),
              accountEmail: Text(user.email!),
              currentAccountPicture: const CircleAvatar(),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 204, 30, 143),
              ),
              otherAccountsPictures: const [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/women/74.jpg"),
                // ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/men/47.jpg"),
                // ),
              ],
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text("Logout"),
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("Signed Out");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                });
              },
            )
          ],
        ),
      ),
      body: Stack(children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ListView(children: [
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  'M-CARE',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(255, 204, 30, 143),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 204, 30, 143),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => KategoriView()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "KATEGORI PRODUK",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
                ),
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
                      MaterialPageRoute(builder: (context) => OrderanView()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ORDERAN ANDA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
                ),
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
                      MaterialPageRoute(builder: (context) => NotaView()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "NOTA ANDA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
                ),
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
                      MaterialPageRoute(builder: (context) => HUbungiView()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "HUBUNGI KAMI",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 204, 30, 143),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => CaraPemesananView()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "CARA PEMESANAN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 160.0,
              ),
              GestureDetector(
                onTap: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Signed Out");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginView()));
                  });
                },
                child: Text(
                  "LOGOUT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
