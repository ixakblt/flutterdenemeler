import 'package:flutter/material.dart';

class srolistem extends StatefulWidget {
  const srolistem({super.key});

  @override
  State<srolistem> createState() => _srolistemState();
}

class _srolistemState extends State<srolistem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar(),
          cardlar()
        ],
      ),
    );
  }
}

class cardlar extends StatelessWidget {
  const cardlar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text('ibrahim akbulut'),
      subtitle: Text('Devoloper'),
      trailing: Icon(Icons.tv),
      leading: CircleAvatar(
        child: Icon(Icons.add),
      ),
    ));
  }
}
