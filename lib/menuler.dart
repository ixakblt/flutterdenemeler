import 'package:flutter/material.dart';

class menumix extends StatefulWidget {
  const menumix({super.key});

  @override
  State<menumix> createState() => _menumixState();
}

class _menumixState extends State<menumix> {
  String? _Secilensehir;
  List<String> tumsehirler = [
    'mardin',
    'mersin',
    'ankara',
    'adana',
    'hakkari',
    'diyarbakir'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        hint: Text('sec knk'),
        icon: Icon(Icons.woman_rounded),
        /*  items: [
          DropdownMenuItem(
            child: Text('Ankara Sehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('İzmir Sehri'),
            value: 'Izmir',
          ),
          DropdownMenuItem(
            child: Text('Bursa Sehri'),
            value: 'Bursa',
          ),
        ],*/
        items: tumsehirler
            .map(
              (String secilenknk) => DropdownMenuItem(
                child: Text(secilenknk),
                value: secilenknk,
              ),
            )
            .toList(),
        value: _Secilensehir,
        onChanged: (String? secilen) {
          setState(() {
            _Secilensehir = secilen;
          });
        },
      ),
    );
  }
}
