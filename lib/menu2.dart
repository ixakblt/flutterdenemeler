import 'package:flutter/material.dart';

class ddownmenu extends StatefulWidget {
  const ddownmenu({super.key});

  @override
  State<ddownmenu> createState() => _ddownmenuState();
}

class _ddownmenuState extends State<ddownmenu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String secilen) {
          debugPrint(secilen);
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('ankara'),
              value: 'ankara',
            ),
            PopupMenuItem(
              child: Text('ankara'),
              value: 'ankara',
            ),
            PopupMenuItem(
              child: Text('ankara'),
              value: 'ankara',
            ),
            PopupMenuItem(
              child: Text('ankara'),
              value: 'ankara',
            ),
            PopupMenuItem(
              child: Text('ankara'),
              value: 'ankara',
            ),
          ];
        },
      ),
    );
  }
}
