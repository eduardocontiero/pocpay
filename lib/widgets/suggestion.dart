import 'package:flutter/material.dart';

class Suggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Container(
                  child: new CircleAvatar(
                    child: Image.asset('assets/images/cielo_image.png'),
                    foregroundColor: Colors.white,
                  ),
                  width: 75.0,
                  height: 75.0,
                  padding: const EdgeInsets.all(2.0), // borde width
                  decoration: new BoxDecoration(
                    color: const Color(0xFFFFFFFF), // border color
                    shape: BoxShape.circle,
                  )),
            ),
            Text("Cielo",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0))
          ],
        ));
  }
}
