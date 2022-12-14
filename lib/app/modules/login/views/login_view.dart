import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uas_app/app/modules/Login_page/views/login_page_view.dart';
import 'package:uas_app/app/modules/daftar/views/daftar_view.dart';
import 'package:uas_app/app/modules/home/views/home_view.dart';


// Class ini login ini menggunakan statefull widget karena untuk menampilkan teks
// dan tombol yang dapat mengubah internal state
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 130.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Image.asset('assets/1.png'),
                const SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Selamat Datang di',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 204, 30, 143),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' M-CARE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                // Text dibawah memiliki type data static 
                Text('Silahkan pilih login,',
                    style: TextStyle(
                      color: Color.fromARGB(255, 85, 83, 83),
                    )),
                Text('Jika sudah memiliki akun',
                    style: TextStyle(
                      color: Color.fromARGB(255, 85, 83, 83),
                    )),
                const SizedBox(
                  height: 15.0,
                ),
                // Apabila tombol login ditekan akan navigasi menuju Login Page untuk melakukan login menggunakan email dan password 
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 204, 30, 143),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => LoginPageView()));
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "LOGIN",
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
                  height: 40.0,
                ),
                Text('Atau',
                    style: TextStyle(
                      color: Color.fromARGB(255, 85, 83, 83),
                    )),
                Text('Jika anda belum memiliki akun',
                    style: TextStyle(
                      color: Color.fromARGB(255, 85, 83, 83),
                    )),
                const SizedBox(
                  height: 15.0,
                ),
                // Apabila tombol Daftar ditekan akan navigasi menuju Daftar untuk melakukan Regist menggunakan username, email dan password 
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 204, 30, 143),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => DaftarView()));
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
          )
        ],
      ),
    );
  }
}
