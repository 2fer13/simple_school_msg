import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:simple_school_msg/repository/ogrenciler_repository.dart';

class OgrencilerSayfasi extends StatefulWidget {
  final OgrencilerRepositroy ogrencilerRepositroy;
  const OgrencilerSayfasi(
    this.ogrencilerRepositroy, {
    Key? key,
  }) : super(key: key);

  @override
  _OgrencilerSayfasiState createState() => _OgrencilerSayfasiState();
}

class _OgrencilerSayfasiState extends State<OgrencilerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenciler'),
      ),
      body: Column(children: [
        PhysicalModel(
          color: Colors.white,
          elevation: 10,
          child: Center(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Text(
                    '${widget.ogrencilerRepositroy.ogrenci.length} Öğrenci')),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => OgrenciSatiri(),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 25,
          ),
        ),
      ]),
    );
  }
}

class OgrenciSatiri extends StatelessWidget {
  const OgrenciSatiri({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Ayşe'),
      leading: const Text('👨👧'),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
    );
  }
}
