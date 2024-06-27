import 'package:flutter/material.dart';

class SplashUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    exitSplash(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 100,
                foregroundImage: AssetImage('assets/images/porche_logo.png')),
            Text(
              'PORSCHE',
              style: TextStyle(
                  letterSpacing: 4, fontSize: 23, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> exitSplash(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Body(),
        ));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Home Page Body'),
      ),
    );
  }
}
