import 'package:flutter/material.dart';

Widget kutucuk() {
  return Container(
    color: Colors.teal.shade300,
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
    return GridView.builder(
      itemCount: 199,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      itemBuilder: (context, index) {
        return kutucuk();
      },
    );
  }

  GridView normalgird() {
    return GridView.count(
      /*
   GridView.extent farklı olarak  
   maxCrossAxisExtent kullanilmali ve crossAxisCountsilinir
  ------------- 

    */
      scrollDirection: Axis.horizontal, //yatayda sıralamak için
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(7),
      children: kutular,
    );
  }
}
