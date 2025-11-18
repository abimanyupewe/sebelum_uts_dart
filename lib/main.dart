import 'package:flutter/material.dart';
import 'package:sebelum_uts_dart/data/dataMatkul.dart';
import 'package:sebelum_uts_dart/home.dart';
import 'package:sebelum_uts_dart/tugas/praktikum_4.dart';
import 'package:sebelum_uts_dart/uts/galeri.dart';
import 'package:sebelum_uts_dart/uts/uts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Uts());
  }
}
