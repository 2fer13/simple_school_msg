import 'package:flutter/material.dart';
import 'package:simple_school_msg/repository/ogretmenler_repository.dart';

class OgretmenlerSayfasi extends StatefulWidget {
  final OgretmenlerRepositroy ogretmenlerRepositroy;
  const OgretmenlerSayfasi(this.ogretmenlerRepositroy, {Key? key})
      : super(key: key);

  @override
  _OgretmenlerSayfasiState createState() => _OgretmenlerSayfasiState();
}

class _OgretmenlerSayfasiState extends State<OgretmenlerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğretmenler'),
      ),
      body: Column(children: [
        const PhysicalModel(
          color: Colors.white,
          elevation: 10,
          child: Center(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Text('10 Öğretmen')),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => const ListTile(
              title: Text('Ayşe'),
              leading: Text('👨👧'),
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 25,
          ),
        ),
      ]),
    );
  }
}
