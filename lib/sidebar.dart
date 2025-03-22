import 'package:consign_ayu/pembelian/pembelian.dart';
import 'package:consign_ayu/penjualan/penjualan_mitra.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180, // Ubah ukuran lebar sidebar sesuai kebutuhan
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Nama Pengguna"),
              accountEmail: const Text("email@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/profile.jpg"), // Ganti dengan gambar profil
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.green),
              title: const Text("Beranda"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.store, color: Colors.green),
              title: const Text("Penjualan & Mitra"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PenjualanMitra()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag, color: Colors.green),
              title: const Text("Pembelian & Suplier"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PembelianPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.green),
              title: const Text("Notifikasi & Remainder"),
              onTap: () {
                Navigator.pushNamed(context, "/notifikasi");
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.green),
              title: const Text("Pengaturan"),
              onTap: () {
                Navigator.pushNamed(context, "/pengaturan");
              },
            ),
          ],
        ),
      ),
    );
  }
}
