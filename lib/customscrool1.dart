import 'package:flutter/material.dart';

class customscrool1 extends StatelessWidget {
  const customscrool1({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 400,
          pinned: true,
          // snap: true, //kurcalanmaya değer :D
          flexibleSpace: FlexibleSpaceBar(
              title: Text('my app baslik'),
              centerTitle: true,
              background: Image.network(
                'https://avatars.githubusercontent.com/u/57018928?v=4',
                fit: BoxFit.cover,
              )),
          backgroundColor: Colors.amberAccent,
        ),
        SliverList(
            delegate: SliverChildListDelegate([...sabitlise, ...sabitlise])),
      ],
    );
  }

  List<Widget> get sabitlise {
    return [
      Container(
        height: 140,
        color: Colors.red,
        child: Text('tekstt'),
      ),
      Container(
        height: 124,
        color: Colors.amber,
        child: Text('tekstt'),
      ),
      Container(
        height: 150,
        color: Colors.lightBlueAccent,
        child: Text('tekstt'),
      ),
      Container(
        height: 130,
        color: Colors.yellowAccent,
        child: Text('tekstt'),
      ),
    ];
  }
}
