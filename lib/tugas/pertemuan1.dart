import 'package:flutter/material.dart';

class Pertemuan1 extends StatelessWidget {
  final String nama = 'Abimanyu Priyo Widagdo';
  final List<String> hobi = ['Bersepeda', 'Membaca', 'Coding'];

  Pertemuan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 1", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black45),
                        children: [
                          TextSpan(text: "Halo Saya "),
                          TextSpan(
                            text: nama,
                            style: TextStyle(color: Colors.purple),
                          ),
                          TextSpan(
                            text:
                                ", Biasa dipanggil Abim. Saya memiliki beberapa hobi ada ",
                          ),
                          TextSpan(
                            text: hobi.join(', '),
                            style: TextStyle(color: Colors.purple),
                          ),
                          TextSpan(text: "."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
