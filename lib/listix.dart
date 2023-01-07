import 'package:flutter/material.dart';

class lisemm extends StatelessWidget {
  List<Ogrenci> isi = List.generate(500, (index) => Ogrenci(index));
  lisemm({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          tileColor:
              index % 2 == 0 ? Colors.green : Colors.black.withOpacity(0.3),
          leading: CircleAvatar(
            child: Icon(Icons.h_mobiledata_sharp),
          ),
          trailing: Icon(Icons.add),
          subtitle: Text('asd'),
          title: Text(isi[index].id.toString()),
        );
      },
      itemCount: isi.length,
    );
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
}

class Ogrenci {
  final int id;
  Ogrenci(this.id);
}
