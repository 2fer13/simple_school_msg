import 'package:flutter/material.dart';
import 'package:simple_school_msg/pages/mesajlar_sayfasi.dart';
import 'package:simple_school_msg/pages/ogrenciler_sayfasi.dart';
import 'package:simple_school_msg/pages/ogretmenler_sayfasi.dart';
import 'package:simple_school_msg/repository/mesajlar_repository.dart';
import 'package:simple_school_msg/repository/ogrenciler_repository.dart';
import 'package:simple_school_msg/repository/ogretmenler_repository.dart';

void main() {
  runApp(const OgrenciApp());
}

class OgrenciApp extends StatelessWidget {
  const OgrenciApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Öğrenci Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnaSayfa(title: 'Öğrenci Ana Sayfa'),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  MesajlarRepository mesajlarRepository = MesajlarRepository();
  OgrencilerRepositroy ogrencilerRepositroy = OgrencilerRepositroy();
  OgretmenlerRepositroy ogretmenlerRepositroy = OgretmenlerRepositroy();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: Text('${mesajlarRepository.yeniMesajSayisi} Yeni Mesaj'),
              onPressed: () {
                _mesajlaraGit(context);
              },
            ),
            TextButton(
              child: Text('${ogrencilerRepositroy.ogrenci.length} Öğrenci'),
              onPressed: () {
                _ogrencilereGit(context);
              },
            ),
            TextButton(
              child: Text('${ogretmenlerRepositroy.ogretmen.length} Öğretmen'),
              onPressed: () {
                _ogretmenlereGit(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void _ogretmenlereGit(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return OgretmenlerSayfasi(OgretmenlerRepositroy());
  }));
}

void _ogrencilereGit(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return OgrencilerSayfasi(OgrencilerRepositroy());
  }));
}

Future<void> _mesajlaraGit(BuildContext context) async {
  await Navigator.of(context).push(MaterialPageRoute(
    builder: (context) {
      return MesajlarSayfasi(MesajlarRepository());
    },
  ));
}
