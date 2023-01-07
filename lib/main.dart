import 'package:flutter/material.dart';
import 'package:ilkproje/gridViewkullanimi.dart';
// import 'package:ilkproje/alertkullanimi.dart';
// import 'package:ilkproje/carddeneme.dart';
// import 'package:ilkproje/listix.dart';
// import 'package:ilkproje/menu2.dart';
// import 'package:ilkproje/menuler.dart';
// import 'package:ilkproje/scrollistem.dart';
// import 'package:ilkproje/listbuilderkullanim.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: gridViewkullanimi(),
          appBar: AppBar(
            centerTitle: true,
            title: Text('seasdlamalr'),
          )),
    );
  }
}
