import 'package:flutter/material.dart';

class ListActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 0.3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset('assets/images/man.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "Você",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text("pagou a"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "@FlutterDev",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text("Churras fim de semana"),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text("R\$140",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text("|",
                            style: TextStyle(color: Color(0xFF9FA0A5))),
                      ),
                      Icon(Icons.people, color: Color(0xFF9FA0A5), size: 15.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("1 semana atrás",
                            style: TextStyle(color: Color(0xFF9FA0A5))),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Icon(Icons.mode_comment,
                              color: Color(0xFF9FA0A5), size: 18.0),
                        ),
                      ),
                      Text("0"),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.favorite,
                              color: Color(0xFF9FA0A5), size: 18.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text("0"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
