import 'package:flutter/material.dart';
import 'package:ilkproje/alertkullanimi.dart';

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
          body: alertdeneme(),
          appBar: AppBar(
            centerTitle: true,
            title: Text('seasdlamalr'),
          )),
    );
  }
}

  // Widget columnkullanma() {
  //   return Column(
  //         children: [
  //           Expanded(child: ixiii()),
  //           Expanded(child: ixiii()),
  //           Expanded(child: ixiii()),
  //           Expanded(child: ixiii()),
  //         ],
  //       );
  // }

//   Widget ixiii() {
//     return Row(children: [
//       TextButton(
//         onPressed: () {},
//         child: Row(
//           children: [Icon(Icons.youtube_searched_for_outlined), Text('Arama')],
//         ),
//       ),
//       OutlinedButton(
//         onPressed: () {},
//         child: Row(
//           children: [Icon(Icons.accessible_sharp), Text('phpcyim')],
//         ),
//       ),
//       ElevatedButton(
//           style: ButtonStyle(
//               overlayColor: MaterialStateProperty.all(Colors.amberAccent)),
//           onPressed: () {},
//           child: Row(
//             children: [Icon(Icons.account_tree), Text('hesap agaci')],
//           ))
//     ]);
//   }
// }


// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double ixi = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ixitest'),
//         ),
//         body: Container(
//           padding: EdgeInsets.only(left: 10),
//           alignment: Alignment.centerLeft,
//           height: 77,
//           width: double.infinity,
//           decoration: BoxDecoration(
//               border: Border.all(color: Colors.black54, width: 0.5),
//               borderRadius: BorderRadius.circular(12)),
//           margin: EdgeInsets.all(18.0),
//           child: InkWell(
//             onTap: () {
//               setState(() {
//                 if (ixi < 10) {
//                   ixi++;
//                 } else if (ixi == 10) {
//                   ixi = 0;
//                 }
//               });
//               print(ixi);
//             },
//             child: Container(
//               padding: EdgeInsets.fromLTRB(2, 4, 0, 4),
//               decoration: BoxDecoration(
//                 color: Colors.white54.withOpacity(1.0),
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   width: ixi,
//                   color: Color.fromARGB(255, 0, 255, 38),
//                 ),
//               ),
//               child: ClipOval(
//                 child: Image(
//                   width: 50,
//                   height: 50,
//                   image: NetworkImage(
//                       'https://avatars.githubusercontent.com/u/57018928?v=4'),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
