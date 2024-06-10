import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogToast extends StatefulWidget {
  @override
  State<DialogToast> createState() => _DialogToastState();
}

class _DialogToastState extends State<DialogToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Toast'),
      ),
      body: Center(
        child: Container(
          child: FilledButton(
            onPressed: () {
              _showDialogToast(context);
            },
            child: Text('Click Here'),
          ),
        ),
      ),
    );
  }

  void _showDialogToast(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsPadding: EdgeInsets.symmetric(horizontal: 10),
        title: Text('Click Any !'),
        content: Text('Click any button to show Toast'),
        actions: [
          Expanded(
            child: FilledButton(
              onPressed: () {
                _showFlutterToast('Negative Button');
              },
              child: Text('-VE'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red)),
            ),
          ),
          Expanded(
            child: FilledButton(
              onPressed: () {
                _showFlutterToast('Neutral Button');
              },
              child: Text('Neutral'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
            ),
          ),
          Expanded(
            child: FilledButton(
              onPressed: () {
                _showFlutterToast('Positive Button');
              },
              child: Text('+VE'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            ),
          ),
        ],
      ),
    );
  }

  void _showFlutterToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      fontSize: 20,
    );
  }
}
