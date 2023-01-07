import 'package:flutter/material.dart';

class listbuilderdeneme extends StatelessWidget {
  List<Ogrenci> ogrenciler = List.generate(
      500, (index) => Ogrenci(index, 'selam denem  $index', 'knk'));
  listbuilderdeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: ogrenciler
            .map(
              (Ogrenci ogr) => ListTile(
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyadi),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget kart() {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.abc_rounded),
        ),
      ),
    );
  }
}

class Ogrenci {
  int id;
  String isim;
  String soyadi;
  Ogrenci(this.id, this.isim, this.soyadi);
}

// ListView klasiklist() {
//   return ListView(
//     children: isi
//         .map((Ogrenci e) => ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.h_mobiledata_sharp),
//               ),
//               trailing: Icon(Icons.add),
//               subtitle: Text('asd'),
//               title: Text(e.id.toString()),
//             ))
//         .toList(),
//   );
// }
