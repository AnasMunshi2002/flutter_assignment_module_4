import 'package:flutter/material.dart';

class GmailAppSplash extends StatefulWidget {
  @override
  State<GmailAppSplash> createState() => _GmailAppSplashState();
}

class _GmailAppSplashState extends State<GmailAppSplash> {
  @override
  Widget build(BuildContext context) {
    exitSplash();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 270,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/gmail-animation.png')),
          ),
        ),
      ),
    );
  }

  Future<void> exitSplash() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => GmailApp(),
        ));
  }
}

class GmailApp extends StatefulWidget {
  const GmailApp({super.key});

  @override
  State<GmailApp> createState() => _GmailAppState();
}

class _GmailAppState extends State<GmailApp> {
  List<Widget> _navitem = [
    MailScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 21, 22, 1),
      body: _navitem[0],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_front_rounded), label: '')
        ],
      ),
    );
  }
}

class MailScreen extends StatefulWidget {
  @override
  State<MailScreen> createState() => _MailScreenState();
}

class _MailScreenState extends State<MailScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        appBar(),
      ],
    );
  }
}

appBar() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(34, 44, 46, 1)),
    margin: EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
    child: MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: () {},
      child: TextField(
        decoration: InputDecoration(
            label: Text('Search in emails'), border: InputBorder.none),
      ),
    ),
  );
}
