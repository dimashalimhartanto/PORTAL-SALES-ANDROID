class UsersDetail {
  final String namaKunjungan;
  final String hpkunjungan;
  final String emailKunjungan;
  final String jabatanKunjungan;
  final String rsKunjungan;
  final Address address;
  final String reqKunjungan;
  final String hasilKunjungan;
  final Company company;

  UsersDetail({
    this.namaKunjungan,
    this.hpkunjungan,
    this.emailKunjungan,
    this.jabatanKunjungan,
    this.rsKunjungan,
    this.address,
    this.reqKunjungan,
    this.hasilKunjungan,
    this.company,
  });

  factory UsersDetail.fromJson(Map<String, dynamic> json) {
    return new UsersDetail(
        namaKunjungan: json['nama_kunjungan'],
        hpkunjungan: json['hp_kunjungan'],
        emailKunjungan: json['email_kunjungan'],
        jabatanKunjungan: json['jabatan_kunjungan'],
        rsKunjungan: json['rs_kunjungan'],
        address: Address.fromJson(json['address']),
        reqKunjungan: json['req_kunjungan'],
        hasilKunjungan: json['hasil_kunjungan'],
        company: Company.fromJson(json['company']));
  }
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  Address({this.street, this.suite, this.city, this.zipcode});

  factory Address.fromJson(Map<String, dynamic> json) {
    return new Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
    );
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({this.name, this.catchPhrase, this.bs});
  factory Company.fromJson(Map<String, dynamic> json) {
    return new Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}
