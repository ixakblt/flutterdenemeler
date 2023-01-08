import 'package:flutter/material.dart';
import 'package:ilkproje/alertkullanimi.dart';

class gestureDetectorkullanim extends StatelessWidget {
  const gestureDetectorkullanim({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          child: Text('ben tiklanan bir yaziyim'),
        ),
      ),
      onLongPress: () {
        alertornek(context, 'onLongPress');
      },
      onDoubleTap: () {
        alertornek(context, 'onDoubleTap');
      },
      onHorizontalDragUpdate: (details) {
        alertornek(context, details.toString());
      },
    );
  }

  Future<dynamic> alertornek(BuildContext context, String yontem) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(' $yontem'),
          content: ListView(
            children: [
              Text('knk şimdi iyi dinle'),
              Text('çıkmak istiyorsan'),
              Text('asagidaki butona bas'),
            ],
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.abc_rounded))
          ],
        );
      },
    );
  }
}
