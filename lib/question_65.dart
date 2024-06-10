import 'dart:io';

import 'package:flutter/material.dart';

class DialogExit extends StatefulWidget {
  @override
  State<DialogExit> createState() => _DialogExitState();
}

class _DialogExitState extends State<DialogExit> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        await _showPopDialog(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exit Dialog'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }

  _showPopDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Are you sure you want to exit??'),
        actions: [
          FilledButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            onPressed: () {
              exit(0);
            },
            child: Text('YES'),
          ),
          FilledButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('NO'),
          )
        ],
      ),
    );
  }
}
