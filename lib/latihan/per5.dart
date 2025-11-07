import 'package:flutter/material.dart';

class Per5 extends StatefulWidget {
  const Per5({super.key});

  @override
  State<Per5> createState() => _Per5State();
}

class _Per5State extends State<Per5> {
  TextEditingController inputField1 = TextEditingController();
  TextEditingController inputField2 = TextEditingController();

  double? hasil; // untuk menyimpan hasil perhitungan

  void hitung(String operasi) {
    double? input1 = double.tryParse(inputField1.text);
    double? input2 = double.tryParse(inputField2.text);

    if (input1 == null || input2 == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Masukkan angka yang valid!")));
      return;
    }

    setState(() {
      switch (operasi) {
        case '+':
          hasil = input1 + input2;
          break;
        case '-':
          hasil = input1 - input2;
          break;
        case 'x':
          hasil = input1 * input2;
          break;
        case ':':
          if (input2 == 0) {
            hasil = double.nan; // agar tidak error
          } else {
            hasil = input1 / input2;
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          runSpacing: 10,
          children: [
            TextField(
              controller: inputField1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Input Value 1",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: inputField2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Input Value 2",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: hasil == null ? "Belum ada hasil" : hasil.toString(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => hitung('+'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text("+", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () => hitung('-'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text("-", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () => hitung('x'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text("x", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () => hitung(':'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text(":", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
