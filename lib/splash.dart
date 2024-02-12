// splash.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart'; // Gantilah dengan path sesuai dengan struktur proyek Anda

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Tambahkan penundaan selama 5 detik sebelum pindah ke halaman utama
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage(title: 'Safety Gas'))),
    );

     return Scaffold(
       backgroundColor: Colors.blue, // Warna latar belakang biru
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png', // Gantilah dengan path gambar sesuai dengan struktur proyek Anda
              width: 120,
              height: 120,
            ),
            SizedBox(height: 16), // Jarak antara logo dan teks
            Text(
              'Safety Gas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}