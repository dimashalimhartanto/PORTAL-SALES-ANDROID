class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/agfa-1.png',
    name: 'Agfa DT2B',
    address: 'Belgia',
    price: 145,
  ),
  Hotel(
    imageUrl: 'assets/images/agfa-2.png',
    name: 'Agfa CR3452',
    address: 'Belgia',
    price: 150,
  ),
  Hotel(
    imageUrl: 'assets/images/agfa-3.png',
    name: 'Agfa CR3452',
    address: 'Belgia',
    price: 150,
  ),
];
