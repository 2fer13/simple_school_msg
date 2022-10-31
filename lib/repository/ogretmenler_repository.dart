class OgretmenlerRepositroy {
  List ogretmen = [
    Ogretmen("Faruk", "Yılmaz", 35, "Erkek"),
    Ogretmen("Semiha", "Çelik", 45, "Kadın")
  ];
}

class Ogretmen {
  String ad;
  String soyad;
  String cinsiyet;
  int yas;
  Ogretmen(this.ad, this.soyad, this.yas, this.cinsiyet);
}
