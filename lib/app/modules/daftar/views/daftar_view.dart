import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:uas_app/app/modules/Login_page/views/login_page_view.dart';
import 'package:uas_app/app/modules/home/views/home_view.dart';
import 'package:uas_app/app/modules/login/views/login_view.dart';

import '../controllers/daftar_controller.dart';

class DaftarView extends GetView<DaftarController> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
            icon: Image.asset('assets/3.png')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            Image.asset('assets/2.png'),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Isi beberapa data untuk daftar',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 204, 30, 143),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 204, 30, 143),
              ),
              onPressed: () {
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text)
                    .then((value) {
                  print("Created New Account");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeView()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                });
              },
              child: Container(
                width: 200,
                height: 50,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "DAFTAR",
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
