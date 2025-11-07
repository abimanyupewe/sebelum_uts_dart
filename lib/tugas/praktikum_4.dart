import 'package:flutter/material.dart';

class Praktikum4 extends StatefulWidget {
  const Praktikum4({super.key});

  @override
  State<Praktikum4> createState() => _Praktikum4State();
}

class _Praktikum4State extends State<Praktikum4> {
  final List<Map<String, dynamic>> _barangList = [
    {'kode': 'LTP', 'nama': 'Laptop', 'harga': 10000000},
    {'kode': 'HP', 'nama': 'Handphone', 'harga': 5000000},
    {'kode': 'TV', 'nama': 'Televisi', 'harga': 3000000},
    {'kode': 'AC', 'nama': 'Air Conditioner', 'harga': 4000000},
    {'kode': 'PRN', 'nama': 'Printer', 'harga': 1500000},
  ];

  final TextEditingController _kodeBarangController = TextEditingController();
  final TextEditingController _jumlahBarangController = TextEditingController();
  final TextEditingController _caraPembayaranController =
      TextEditingController();

  String _hasil = '';

  void _hitung() {
    String kodeBarang = _kodeBarangController.text.trim().toUpperCase();
    String namaBarang = '';
    int harga = 0;
    double diskon = 0;
    int jumlahBarang = int.tryParse(_jumlahBarangController.text) ?? 0;
    String caraPembayaran = _caraPembayaranController.text.trim().toUpperCase();

    switch (kodeBarang) {
      case 'LTP':
        namaBarang = 'Laptop';
        harga = 10000000;
        break;
      case 'HP':
        namaBarang = 'Handphone';
        harga = 5000000;
        break;
      case 'TV':
        namaBarang = 'Televisi';
        harga = 3000000;
        break;
      case 'AC':
        namaBarang = 'Air Conditioner';
        harga = 4000000;
        break;
      case 'PRN':
        namaBarang = 'Printer';
        harga = 1500000;
        break;
      default:
        setState(() {
          _hasil = 'Kode barang tidak valid.';
        });
        return;
    }

    if (jumlahBarang <= 0) {
      setState(() {
        _hasil = 'Jumlah barang harus lebih dari 0.';
      });
      return;
    }

    if (caraPembayaran == 'T') {
      diskon = 0.10 * harga * jumlahBarang;
    } else if (caraPembayaran == 'K') {
      diskon = 0;
    } else {
      setState(() {
        _hasil = 'Metode pembayaran tidak valid. (T/K)';
      });
      return;
    }

    int total = harga * jumlahBarang;
    double totalBayar = total - diskon;

    setState(() {
      _hasil =
          'Nama Barang: $namaBarang\nHarga Satuan: $harga\nJumlah: $jumlahBarang\nTotal: $total\nDiskon: ${diskon.toInt()}\nTotal Bayar: ${totalBayar.toInt()}';
    });
  }

  void _kosongkan() {
    _kodeBarangController.clear();
    _jumlahBarangController.clear();
    _caraPembayaranController.clear();
    setState(() {
      _hasil = '';
    });
  }

  String formatRupiah(int number) {
    return 'Rp. ${number.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator sederhana",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Tabel barang
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Kode',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Nama Barang',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Harga',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ],
                      rows: _barangList.map((barang) {
                        return DataRow(
                          cells: [
                            DataCell(Text(barang['kode'])),
                            DataCell(Text(barang['nama'])),
                            DataCell(Text(formatRupiah(barang['harga']))),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Wrap(
                        runSpacing: 10,
                        children: [
                          TextField(
                            controller: _kodeBarangController,
                            decoration: InputDecoration(
                              labelText: 'Kode Barang (LTP/HP/TV/AC/PRN)',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          TextField(
                            controller: _jumlahBarangController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Jumlah Barang',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          TextField(
                            controller: _caraPembayaranController,
                            decoration: InputDecoration(
                              labelText: 'Cara Pembayaran (T/K)',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: _hitung,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text('Hitung'),
                              ),
                              SizedBox(width: 16),
                              ElevatedButton(
                                onPressed: _kosongkan,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text('Kosongkan'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Divider(thickness: 2),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        _hasil.isEmpty ? 'Hasil tampil di sini.' : _hasil,
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
