import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String supplier;
  ProductPage({required this.supplier});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product - $supplier"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Fungsi untuk menambah produk
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 7, // Jumlah produk untuk supplier
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Product ${index + 1}'),
            subtitle: Text('Harga: Rp${(index + 1) * 10000}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Fungsi untuk mengedit produk
                    showEditProductDialog(context, index);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Fungsi untuk menghapus produk
                    showDeleteConfirmationDialog(context, index);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void showEditProductDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Product ${index + 1}'),
          content: TextField(
            decoration: InputDecoration(hintText: "Nama Produk"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Simpan perubahan produk
                Navigator.pop(context);
              },
              child: Text('Simpan'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Batal'),
            ),
          ],
        );
      },
    );
  }

  void showDeleteConfirmationDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Konfirmasi'),
          content:
              Text('Apakah Anda yakin ingin menghapus produk ${index + 1}?'),
          actions: [
            TextButton(
              onPressed: () {
                // Hapus produk
                Navigator.pop(context);
              },
              child: Text('Hapus'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Batal'),
            ),
          ],
        );
      },
    );
  }
}
