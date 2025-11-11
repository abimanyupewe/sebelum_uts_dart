import 'package:flutter/material.dart';
import 'package:sebelum_uts_dart/latihan/per5.dart';
import 'package:sebelum_uts_dart/latihan/pert3.dart';
import 'package:sebelum_uts_dart/tugas/praktikum_4.dart';

class DataMatkul {
  DataMatkul();

  final List<Map<String, dynamic>> praktikum = [
    {
      "id": 001,
      "onTap": (context) => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => Pert3())),
      "nama": "Praktikum 3",
      "dosen": "Dr. John Doe",
    },
    {
      "id": 002,
      "onTap": (context) => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => Per5())),
      "nama": "Praktikum 5",
      "dosen": "Dr. Jane Smith",
      "sks": 3,
    },
    {
      "id": 003,
      "nama": "Jaringan Komputer",
      "dosen": "Dr. Alan Turing",
      "sks": 3,
    },
    {
      "id": 004,
      "nama": "Sistem Operasi",
      "dosen": "Dr. Ada Lovelace",
      "sks": 3,
    },
    {
      "id": 005,
      "nama": "Kecerdasan Buatan",
      "dosen": "Dr. Marvin Minsky",
      "sks": 3,
    },
  ];

  final List<Map<String, dynamic>> tugas = [
    {
      "id": 101,
      "nama": "Algoritma dan Struktur Data",
      "dosen": "Dr. Edsger Dijkstra",
      "sks": 4,
    },
    {
      "id": 102,
      "nama": "Rekayasa Perangkat Lunak",
      "dosen": "Dr. Barry Boehm",
      "sks": 3,
    },
    {
      "id": 103,
      "nama": "Keamanan Komputer",
      "dosen": "Dr. Whitfield Diffie",
      "sks": 3,
    },
    {
      "id": 104,
      "nama": "Grafika Komputer",
      "dosen": "Dr. Ivan Sutherland",
      "sks": 3,
    },
    {
      "id": 105,
      "nama": "Pemrograman Web",
      "dosen": "Dr. Tim Berners-Lee",
      "sks": 3,
    },
  ];
}
