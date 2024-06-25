import 'package:flutter/material.dart';
// import 'package:objekwisata/screen/splash_screen.dart';
import 'package:objekwisata/screen/dashboard_screen.dart';
import 'package:objekwisata/screen/login_screen.dart';
import 'package:objekwisata/screen/destinasi_screen.dart';
import 'package:objekwisata/screen/kebudayaan_detail.dart';
import 'package:objekwisata/screen/kebudayaan.dart';
import 'package:objekwisata/screen/berita.dart';
import 'package:objekwisata/screen/team.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Objek Wisata Riau',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}