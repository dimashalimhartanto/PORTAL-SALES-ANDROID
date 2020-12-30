part of 'pages.dart';

class AkunSales extends StatefulWidget {
  @override
  AkunSalesState createState() => AkunSalesState();
}

class AkunSalesState extends State<AkunSales> {
  bool akunSales = false;
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // NOTE: APP Bar
              Positioned(top: 0, child: createAkunAppBar(widthSize)),
              (!akunSales) ? AkunPembeli() : AkunToko()
            ],
          ),
        ),
      ),
    );
  }

  // NOTE: Akun AppBar
  Widget createAkunAppBar(double widthSize) => Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 110,
          width: widthSize,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: accentColor3.withOpacity(0.3),
                offset: Offset(0.0, 15),
                blurRadius: 30,
                spreadRadius: -10,
              ),
            ],
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    children: [
                      Text(
                        "Profile Sales",
                        style: blackTextFont.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Icon(
                        Icons.settings,
                        color: Colors.cyan[900],
                        size: 24,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.mail,
                        color: Colors.cyan[900],
                        size: 24,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.cyan[900],
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          akunSales = !akunSales;
                        });
                      },
                      child: Container(
                        width: widthSize * 0.5,
                        height: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Akun Sales",
                              style: greenTextFont.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: !akunSales ? mainColor : accentColor3,
                              ),
                            ),
                            Container(
                              height: 4,
                              width: double.infinity,
                              color:
                                  !akunSales ? mainColor : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          akunSales = !akunSales;
                        });
                      },
                      child: Container(
                        width: widthSize * 0.5,
                        height: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Edit Profile Sales",
                              style: greenTextFont.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: akunSales ? mainColor : accentColor3,
                              ),
                            ),
                            Container(
                              height: 4,
                              width: double.infinity,
                              color: akunSales ? mainColor : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

// NOTE: Akun Pembeli
class AkunPembeli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 110),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: Profile
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  defaultMargin, defaultMargin, defaultMargin, 0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: accentColor3,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/dimas.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: widthSize * 0.4,
                        child: Text(
                          "Dimas Halim Hartanto",
                          style: blackTextFont.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Verified Account",
                        style: greenTextFont.copyWith(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: accentColor3.withOpacity(0.3), width: 1),
                      ),
                      child: Text(
                        "Buat Post",
                        style: greyTextFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 19,
            ),
            // NOTE: Dana Tokopedia
            Container(
              height: 160,
              width: widthSize - 2 * defaultMargin,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    offset: Offset(2, 0),
                    color: accentColor3.withOpacity(0.3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Target Sales ",
                            style: blackTextFont.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Atur",
                            style: greenTextFont.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 4,
                                          color: Colors.white,
                                        ),
                                        color: Colors.purple[900]),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Aktivasi",
                                style: greenTextFont.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "OVO",
                                style: greyTextFont.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/saldo.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Rp. 0",
                                style: blackTextFont.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Saldo",
                                style: greyTextFont.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // NOTE: Transaksi
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: 16, horizontal: defaultMargin),
                child: Text(
                  "Transaksi Pembayaran",
                  style: blackTextFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: InkWell(
                onTap: () {},
                splashColor: accentColor3.withOpacity(0.2),
                child: Container(
                  height: 55,
                  width: widthSize - 2 * defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Menunggu Pemabayran",
                            style: blackTextFont,
                          ),
                          Text(
                            "Semua transaksi yang belum dibayar",
                            style: greyTextFont,
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: accentColor3,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: defaultMargin, top: 10, bottom: 16),
              child: Text(
                "Daftar Transaksi",
                style: blackTextFont,
              ),
            ),
            Container(
              height: 100,
              width: widthSize - 2 * defaultMargin,
              margin: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/belanja.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Belanja",
                            style: blackTextFont.copyWith(
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/tagihan.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Top-up & Tagihan",
                            style: blackTextFont.copyWith(
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/pesawat.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Pesawat",
                            style: blackTextFont.copyWith(
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: InkWell(
                onTap: () {},
                splashColor: accentColor3.withOpacity(0.2),
                child: Container(
                  height: 55,
                  width: widthSize - 2 * defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Ulasan",
                            style: blackTextFont,
                          ),
                          Text(
                            "Berikan penilaian dan ulasan Produk",
                            style: greyTextFont,
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: accentColor3,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: InkWell(
                onTap: () {},
                splashColor: accentColor3.withOpacity(0.2),
                child: Container(
                  height: 55,
                  width: widthSize - 2 * defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Komplain Sebagai Pembeli",
                            style: blackTextFont,
                          ),
                          Text(
                            "Lihat Status Komplain",
                            style: greyTextFont,
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: accentColor3,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // NOTE: Favorite Saya
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                "Favorit Saya",
                style: blackTextFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: InkWell(
                onTap: () {},
                splashColor: accentColor3.withOpacity(0.2),
                child: Container(
                  height: 55,
                  width: widthSize - 2 * defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Topik Favorit",
                            style: blackTextFont,
                          ),
                          Text(
                            "Atur topik favorit Anda",
                            style: greyTextFont,
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: accentColor3,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: InkWell(
                onTap: () {},
                splashColor: accentColor3.withOpacity(0.2),
                child: Container(
                  height: 55,
                  width: widthSize - 2 * defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Terakhir Dilihat",
                            style: blackTextFont,
                          ),
                          Text(
                            "Cek Produk terakhir yang dilihat",
                            style: greyTextFont,
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: accentColor3,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: InkWell(
                onTap: () {},
                splashColor: accentColor3.withOpacity(0.2),
                child: Container(
                  height: 55,
                  width: widthSize - 2 * defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Wishlist",
                            style: blackTextFont,
                          ),
                          Text(
                            "Lihat Produk yang sudah Anda wishlist",
                            style: greyTextFont,
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: accentColor3,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: InkWell(
                onTap: () {},
                splashColor: accentColor3.withOpacity(0.2),
                child: Container(
                  height: 55,
                  width: widthSize - 2 * defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Toko Favorite",
                            style: blackTextFont,
                          ),
                          Text(
                            "Lihat Toko yang sudah Anda Favoritkan",
                            style: greyTextFont,
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: accentColor3,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: InkWell(
                onTap: () {},
                splashColor: accentColor3.withOpacity(0.2),
                child: Container(
                  height: 55,
                  width: widthSize - 2 * defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Langganan",
                            style: blackTextFont,
                          ),
                          Text(
                            "Atur & bayar tagihan dalam satu tempat",
                            style: greyTextFont,
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: accentColor3,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Divider(
                height: 20,
                thickness: 1,
                color: accentColor3.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}

// NOTE: Akun pembeli
class AkunToko extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 110),
      child: Container(
        width: widthSize,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage("assets/images/intimedika.png")),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Silahkan Edit",
              style: blackTextFont.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Profile anda disini",
              style: greyTextFont.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
