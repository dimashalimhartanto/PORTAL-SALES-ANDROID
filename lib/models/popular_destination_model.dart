class PopularDestinationModel {
  String namars;
  String kota;
  String foto;

  PopularDestinationModel(this.namars, this.kota, this.foto);
}

List<PopularDestinationModel> populars = kunjunganSales
    .map((item) =>
        PopularDestinationModel(item['namars'], item['kota'], item['foto']))
    .toList();

var kunjunganSales = [
  {
    "namars": "RS Pelita Insani",
    "kota": "Indonesia",
    "foto": "assets/images/kunjungan1.jpg",
  },
  {
    "namars": "RS Pelita Insani",
    "kota": "Banjarmasin",
    "foto": "assets/images/kunjungan2.jpg",
  },
  {
    "namars": "RS Pelita Insani",
    "kota": "Banjarmasin",
    "foto": "assets/images/kunjungan3.jpg",
  },
  {
    "namars": "RS Pelita Insani",
    "kota": "Banjarmasin",
    "foto": "assets/images/kunjungan4.jpg",
  },
];
