class OgrencilerRepositroy {
  final ogrenci = [
    Ogrenci("Ali", "Yılmaz", 18, "Erkek"),
    Ogrenci("Ayşe", "Çelik", 20, "Kadın")
  ];
}

class Ogrenci {
  String ad;
  String soyad;
  String cinsiyet;
  int yas;
  Ogrenci(this.ad, this.soyad, this.yas, this.cinsiyet);
}
