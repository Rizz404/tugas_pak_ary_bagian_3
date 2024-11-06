import 'package:flutter/material.dart';
import 'package:latihan_pak_ary_bagian_3/screens/tugas31.dart';
import 'package:latihan_pak_ary_bagian_3/screens/tugas32.dart';
import 'package:latihan_pak_ary_bagian_3/screens/tugas33.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Tugas31(),
        '/tugas-3-2': (context) => const Tugas32(),
        '/tugas-3-3': (context) => const Tugas33(),
      },
    );
  }
}
