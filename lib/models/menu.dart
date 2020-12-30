part of 'models.dart';

class Menu {
  final String title;
  final String icon;

  Menu({this.title, this.icon});
}

List<Menu> menuList = [
  Menu(
    title: "Lihat Semua",
    icon: "assets/images/funnel.png",
  ),
  Menu(
    title: "Kunjungan",
    icon: "assets/images/kunjungan.png",
  ),
  Menu(
    title: "Travel",
    icon: "assets/images/kunjungan.png",
  ),
  Menu(
    title: "Semua Promo",
    icon: "assets/images/resource.png",
  ),
];
