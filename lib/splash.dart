import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Container(
            color: Color(0xFF23D067),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/pocpay_name.png',
                    width: 170.0,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  CircularProgressIndicator(
                    valueColor:
                        new AlwaysStoppedAnimation<Color>(Colors.white),
                  )
                ],
              ),
            )));
  }
}