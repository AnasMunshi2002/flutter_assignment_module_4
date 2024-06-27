import 'package:flutter/material.dart';

class ActivityRedirect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity One'),
      ),
      body: Center(
          child: FilledButton(
        child: Text('Next Activity'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ActivityTwo(),
              ));
        },
      )),
    );
  }
}

class ActivityTwo extends StatelessWidget {
  const ActivityTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acivity Two'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
