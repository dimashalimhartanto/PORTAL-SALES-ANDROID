class CarouselModel {
  String foto;

  CarouselModel(this.foto);
}

List<CarouselModel> carousels =
    carouselsData.map((foto) => CarouselModel(foto['foto'])).toList();

var carouselsData = [
  {"foto": "assets/images/agfa-1.png"},
  {"foto": "assets/images/agfa-2.png"},
  {"foto": "assets/images/agfa-3.png"},
  {"foto": "assets/images/agfa-4.png"},
  {"foto": "assets/images/agfa-5.png"},
  {"foto": "assets/images/bayer-1.png"},
  {"foto": "assets/images/bayer-2.png"},
  {"foto": "assets/images/bayer-3.png"},
  {"foto": "assets/images/bayer-4.png"},
  {"foto": "assets/images/bayer-5.png"},
  {"foto": "assets/images/bayer-6.png"},
  {"foto": "assets/images/bayer-7.png"},
  {"foto": "assets/images/careray-1.png"},
  {"foto": "assets/images/careray-2.png"},
  {"foto": "assets/images/careray-3.png"},
];
