part of 'models.dart';

class Produk {
  final String fotoProduk;
  final String namaProduk, namaToko, kotaTokoProduk, statusToko, detailProduk;
  final int hargaProduk, totalBeliProduk, sisaProduk;
  final double ratingProduk, promo;
  final bool isFavorite;

  Produk({
    this.namaProduk,
    this.fotoProduk,
    this.namaToko,
    this.hargaProduk,
    this.ratingProduk,
    this.kotaTokoProduk,
    this.totalBeliProduk,
    this.statusToko,
    this.sisaProduk,
    this.isFavorite = false,
    this.promo = 0.1,
    this.detailProduk =
        "Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf.",
  });
}

List<Produk> dummyProduk = [
  Produk(
    namaProduk: "Shark Helmet",
    namaToko: "Toko Bangben",
    fotoProduk: "assets/images/kunjungan1.jpg",
    hargaProduk: 700000,
    ratingProduk: 4.5,
    kotaTokoProduk: "Kota Depok",
    totalBeliProduk: 10,
    statusToko: "official",
    sisaProduk: 4,
  ),
  Produk(
      namaProduk: "Samsung A 51",
      namaToko: "Toko Jaya Makmur",
      fotoProduk: "assets/images/kunjungan2.jpg",
      hargaProduk: 4699000,
      ratingProduk: 3.6,
      kotaTokoProduk: "Jakarta Selatan",
      totalBeliProduk: 12,
      statusToko: "official",
      sisaProduk: 4,
      isFavorite: true),
  Produk(
    namaProduk: "Xiaomi Note 9s",
    namaToko: "Xiaomi Official Store",
    fotoProduk: "assets/images/kunjungan3.jpg",
    hargaProduk: 3150000,
    ratingProduk: 4.7,
    kotaTokoProduk: "Kota Depok",
    totalBeliProduk: 78,
    statusToko: "official",
    sisaProduk: 4,
    isFavorite: true,
  ),
  Produk(
    namaProduk: "Mechanical Keyboard Gaming",
    namaToko: "Galaxy Gaming",
    fotoProduk: "assets/images/kunjungan4.jpg",
    hargaProduk: 150000,
    ratingProduk: 4.2,
    kotaTokoProduk: "Tanggerang Selatan",
    totalBeliProduk: 12,
    statusToko: "official",
    sisaProduk: 4,
  ),
];

class Kategori {
  final String namaKategori;
  final List<Color> ketegoriColor;

  Kategori({this.namaKategori, this.ketegoriColor});
}

List<Kategori> dummyKategori = [
  Kategori(namaKategori: "For Sales", ketegoriColor: [
    Colors.orange[900],
    Colors.orange[900],
  ]),
  Kategori(namaKategori: "Special Discount", ketegoriColor: [
    Colors.orange[900],
    Colors.orange[900],
  ]),
  Kategori(namaKategori: "Aktivitasmu", ketegoriColor: [
    Colors.orange[900],
    Colors.orange[900],
  ]),
  Kategori(namaKategori: "Fashion", ketegoriColor: [
    Colors.orange[900],
    Colors.orange[900],
  ]),
];
