import 'package:flutter/material.dart';
import 'package:latihan_pak_ary_bagian_3/screens/tugas31.dart';
import 'package:latihan_pak_ary_bagian_3/screens/tugas32.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tugas32(),
    );
  }
}
