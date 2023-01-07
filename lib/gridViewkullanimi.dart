import 'package:flutter/material.dart';

Widget kutucuk() {
  return Container(
    color: Colors.amber.shade600,
    alignment: Alignment.center,
    child: Text(
      'ixix',
      textAlign: TextAlign.center,
    ),
  );
}

class gridViewkullanimi extends StatelessWidget {
  List<Widget> kutular = List.filled(55, kutucuk());

  gridViewkullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.horizontal, //yatayda sıralamak için
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(7),
      children: kutular,
    );
  }
}
