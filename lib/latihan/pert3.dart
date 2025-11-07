import 'package:flutter/material.dart';

class Pert3 extends StatefulWidget {
  const Pert3({super.key});

  @override
  State<Pert3> createState() => _Pert3State();
}

class _Pert3State extends State<Pert3> {
  var nama = "Abimanyu";
  var jurusan = "TI";
  var nim = 23201245;

  TextEditingController pesanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 3", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nama : $nama"),
                    Text("Jurusan : $jurusan"),
                    Text("Nim : ${nim.toString()}"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: pesanController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hint: Text("data"),
                prefixIcon: Icon(Icons.edit, size: 20),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () => {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text(pesanController.text)))
            },style: ButtonStyle(), child: Text("Tekan Aku"))
          ],
        ),
      ),
    );
  }
}
