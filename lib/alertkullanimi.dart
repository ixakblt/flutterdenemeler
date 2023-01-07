import 'package:flutter/material.dart';

class alertdeneme extends StatelessWidget {
  List<Ogrenci> ogrenciler = List.generate(
      20, (index) => Ogrenci(index, 'denemeix  ${index + 1}', 'knk'));

  alertdeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: () {
                alertgoster(context);
              },
              title: Text(
                ogrenciler[index].isim.toString(),
              ),
              leading: CircleAvatar(
                child: Icon(Icons.add),
              ),
              subtitle: Text(ogrenciler[index].soyadi.toString()),
            );
          },
          itemCount: ogrenciler.length),
    );
  }

  void alertgoster(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: ((ctx) {
          return AlertDialog(
            title: Text('Baslik'),
            content:
                SingleChildScrollView(child: Text('uzuncaaaa yaziiii' * 90)),
            actions: [
              TextButton(
                child: Icon(Icons.accessible_sharp),
                onPressed: () {},
              ),
              TextButton(
                child: Text('kapat'),
                onPressed: () {},
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                  child: Text('denem butonu'))
            ],
          );
        }));
  }
}

class Ogrenci {
  int id;
  String isim;
  String soyadi;
  Ogrenci(this.id, this.isim, this.soyadi);
}
