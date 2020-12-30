class CarouselModel {
  String image;

  CarouselModel(this.image);
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
];
