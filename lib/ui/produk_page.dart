import 'package:flutter/material.dart';
import 'package:ui_uts_app/ui/produk_form.dart';
import 'package:ui_uts_app/ui/produk_detail.dart';

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
          child: ListTile(
            title: Text(namaProduk.toString()),
            subtitle: Text(harga.toString()),
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProdukDetail(
                        kodeProduk: kodeProduk,
                        namaProduk: namaProduk,
                        harga: harga,
                      )));
        });
  }
}

class _ItemProdukState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataProduk'),
        actions: [
          GestureDetector(
              child: const Icon(Icons.add),
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProdukForm()));
              }),
        ],
      ),
      body: ListView(
        children: const [
          ItemProduk(
            kodeProduk: 'A001',
            namaProduk: 'kulkas',
            harga: 2500000,
          ),
          ItemProduk(
            kodeProduk: 'A002',
            namaProduk: 'Television',
            harga: 5000000,
          ),
          ItemProduk(
            kodeProduk: 'A003',
            namaProduk: 'Mesin Cuci',
            harga: 1500000,
          ),
        ],
      ),
    );
  }
}
