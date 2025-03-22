import 'package:flutter/material.dart';

class Faktur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faktur"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Outlet A",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Karawang, 10 Januari 2025"),
            SizedBox(height: 10),
            Table(
              border: TableBorder.all(),
              columnWidths: {
                0: FixedColumnWidth(40),
                1: FlexColumnWidth(),
                2: FixedColumnWidth(50),
                3: FixedColumnWidth(50),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                    Padding(padding: EdgeInsets.all(8), child: Text("No")),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("Nama Product")),
                    Padding(padding: EdgeInsets.all(8), child: Text("S.Awal")),
                    Padding(padding: EdgeInsets.all(8), child: Text("T.Stock")),
                  ],
                ),
                for (var i = 0; i < 7; i++)
                  TableRow(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(8), child: Text("${i + 1}.")),
                      Padding(
                          padding: EdgeInsets.all(8),
                          child: Text("Produk ${i + 1}")),
                      Padding(padding: EdgeInsets.all(8), child: Text("10")),
                      Padding(padding: EdgeInsets.all(8), child: Text("5")),
                    ],
                  ),
              ],
            ),
            SizedBox(height: 20),
            Text("Penerima,"),
            SizedBox(height: 40),
            Text("(                  )"),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Print Faktur"),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Januari"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Februari"),
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                      mini: true,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
