import 'package:flutter/material.dart';

class SimpleAlertDialog extends StatefulWidget {
  @override
  State<SimpleAlertDialog> createState() => _SimpleAlertDialogState();
}

class _SimpleAlertDialogState extends State<SimpleAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
      ),
      body: Center(
        child: Container(
          child: FilledButton(
            child: Text('Click Here'),
            onPressed: () {
              _showAlertDialog(context);
            },
          ),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsPadding: EdgeInsets.symmetric(horizontal: 10),
        title: Text('Alert !!'),
        content: Text('This is a simple Alert Dialog !'),
        actions: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('CANCEL'),
            ),
          ),
          Expanded(
            child: Icon(
              Icons.smart_display,
              size: 40,
            ),
          ),
          Expanded(
            child: FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('SUBMIT'),
            ),
          ),
        ],
      ),
    );
  }
}
