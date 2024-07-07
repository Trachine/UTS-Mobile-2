class Produk {
  int? id;
  String? kodeProduk;
  String? namaProduk;
  int? hargaProduk;

  Produk({this.id, this.kodeProduk, this.namaProduk, this.hargaProduk});

  factory Produk.fromJson(Map<String, dynamic> obj) {
    int? parseInt(dynamic value) {
      if (value is int) {
        return value;
      } else if (value is String) {
        return int.tryParse(value);
      }
      return null;
    }

    return Produk(
      id: parseInt(obj['id']),
      kodeProduk: obj['kode_produk'] as String?,
      namaProduk: obj['nama_produk'] as String?,
      hargaProduk: parseInt(obj['harga_produk']),
    );
  }
}
