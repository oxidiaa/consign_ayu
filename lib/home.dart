import 'package:flutter/material.dart';
import 'sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(), // Menghubungkan Sidebar
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Tambahkan aksi notifikasi di sini
            },
          ),
          CircleAvatar(
            backgroundImage:
                AssetImage("img/bginfo.png"), // Ganti dengan gambar profil
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kartu Informasi Bisnis
            Card(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Ayu Herbal",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("Distributor Herbal Karawang"),
                    SizedBox(height: 5),
                    Text("Jl. Kayu Manis A7, Karawang Barat"),
                    Text("WA: 0877-7896-5845"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Kotak Data Penjualan & Stok Barang
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.article, color: Colors.green),
                      title: const Text("Data Penjualan"),
                      onTap: () {
                        // Aksi saat klik
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.inventory, color: Colors.green),
                      title: const Text("99 Stok Barang"),
                      onTap: () {
                        // Aksi saat klik
                      },
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_cart, color: Colors.green),
                title: const Text("Data Pembelian"),
                onTap: () {
                  // Aksi saat klik
                },
              ),
            ),
            const SizedBox(height: 20),
            // Grafik Dummy
            Expanded(
              child: Image.asset("img/bginfo.png",
                  fit: BoxFit.cover), // Ganti dengan grafik
            ),
          ],
        ),
      ),
    );
  }
}
