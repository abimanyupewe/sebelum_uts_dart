import 'package:flutter/material.dart';
import 'package:sebelum_uts_dart/data/dataMatkul.dart';
import 'package:sebelum_uts_dart/widgets/list_pratikum.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataMatkul matkul = DataMatkul();
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(),
          child: ListPratikum(praktikum: matkul.praktikum),
        ),
      ),
      appBar: AppBar(title: Text("Pemrograman Mobile")),
      body: ListPratikum(praktikum: matkul.praktikum),
    );
  }
}
