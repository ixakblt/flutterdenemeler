import 'package:flutter/material.dart';

Widget ixiii() {
  return Row(children: [
    TextButton(
      onPressed: () {},
      child: Row(
        children: [Icon(Icons.youtube_searched_for_outlined), Text('Arama')],
      ),
    ),
    OutlinedButton(
      onPressed: () {},
      child: Row(
        children: [Icon(Icons.accessible_sharp), Text('phpcyim')],
      ),
    ),
    ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.amberAccent)),
        onPressed: () {},
        child: Row(
          children: [Icon(Icons.account_tree), Text('hesap agaci')],
        ))
  ]);
}
