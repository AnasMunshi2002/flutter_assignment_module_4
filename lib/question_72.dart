import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PhoneAppDialog extends StatefulWidget {
  @override
  State<PhoneAppDialog> createState() => _PhoneAppDialogState();
}

class _PhoneAppDialogState extends State<PhoneAppDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone App'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Home Screen'),
              )
            ],
          ),
        ],
      ),
      body: Center(
        child: Text('This is a sample page'),
      ),
    );
  }
}
