class PopularDestinationModel {
  String title;
  String icon;
  String route;

  PopularDestinationModel(this.title, this.icon);
}

List<PopularDestinationModel> populars = menuSales
    .map((item) => PopularDestinationModel(item['name'], item['image']))
    .toList();

var menuSales = [
  {"name": "Kunjungan\nRumah Sakit", "image": "assets/images/hospital.png"},
  {
    "name": "Top Up",
    "image": "assets/images/kunjungan.png",
  },
  {
    "name": "Semua promo",
    "image": "assets/images/resource.png",
  },
];
