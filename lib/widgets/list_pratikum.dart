import 'package:flutter/material.dart';
import 'package:sebelum_uts_dart/data/dataMatkul.dart';

class ListPratikum extends StatelessWidget {
  final List<Map<String, dynamic>> praktikum;

  const ListPratikum({super.key, required this.praktikum});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Daftar Praktikum",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Expanded(
          child: ListView.builder(
            itemCount: praktikum.length,
            itemBuilder: (context, index) {
              final matkul = praktikum[index];
              return ListTile(
                leading: const Icon(Icons.book),
                title: Text(matkul['nama']),
                subtitle: Text('Dosen: ${matkul['dosen']} • SKS: ${matkul['sks']}'),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Kamu memilih ${matkul['nama']}')),
                  );
                  Navigator.pop(context); // otomatis tutup drawer
                  matkul['onTap'](context);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
