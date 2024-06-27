import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SumActivity extends StatelessWidget {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Input Screen'),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter : ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Number 1'),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num2,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    label: Text('Number 2'),
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FilledButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              onPressed: () {
                int number1 = int.parse(num1.text.toString());
                int number2 = int.parse(num2.text.toString());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          NextRoute(num1: number1, num2: number2),
                    ));
              },
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextRoute extends StatelessWidget {
  int num1;
  int num2;

  NextRoute({required this.num1, required this.num2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Output Screen'),
      ),
      body: Center(
        child: Text(
          '''
        Sum of $num1 &  $num2 = ${num1 + num2}
        ''',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
