class CarouselModel {
  String foto;

  CarouselModel(this.foto);
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/agfa-1.png"},
  {"image": "assets/images/agfa-2.png"},
  {"image": "assets/images/agfa-3.png"},
  {"image": "assets/images/agfa-4.png"},
  {"image": "assets/images/agfa-5.png"},
  {"image": "assets/images/bayer-1.png"},
  {"image": "assets/images/bayer-2.png"},
  {"image": "assets/images/bayer-3.png"},
  {"image": "assets/images/bayer-4.png"},
  {"image": "assets/images/bayer-5.png"},
  {"image": "assets/images/bayer-6.png"},
  {"image": "assets/images/bayer-7.png"},
  {"image": "assets/images/careray-1.png"},
  {"image": "assets/images/careray-2.png"},
  {"image": "assets/images/careray-3.png"},
  {"image": "assets/images/intiwid-1.png"},
];
