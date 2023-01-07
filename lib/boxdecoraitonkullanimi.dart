import 'package:flutter/material.dart';

Widget kutucuk() {
  return Container(
    alignment: Alignment.center,
    child: Text(
      'renk deneme',
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
      itemCount: 15,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 4, color: Colors.black),
              boxShadow: [
                BoxShadow(color: Colors.purple.shade500, offset: Offset(5, 8)),
                BoxShadow(color: Colors.blueAccent, offset: Offset(-3, -3))
              ],
              borderRadius: BorderRadius.all(Radius.circular(50)),
              //color: Colors.blueGrey,
              gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.5),
                Colors.green.withOpacity(1),
                Colors.yellow.withOpacity(0.3)
              ], begin: Alignment.bottomCenter, end: Alignment.topRight),
            ),
            child: kutucuk());
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
