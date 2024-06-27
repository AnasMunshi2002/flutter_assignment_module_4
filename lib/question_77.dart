import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CallURL extends StatefulWidget {
  @override
  State<CallURL> createState() => _CallURLState();
}

class _CallURLState extends State<CallURL> {
  var _phoneNumber = TextEditingController();
  var _message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URL Launcher'),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Text('Call URL'),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    maxLength: 10,
                    controller: _phoneNumber,
                    decoration:
                        InputDecoration(labelText: 'Enter phone number'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FilledButton(
                  onPressed: () {
                    String _phNo = '+91' + _phoneNumber.text.trim().toString();
                    launchUrlString('tel:/${_phNo}');
                  },
                  child: Text(
                    'CALL',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    controller: _message,
                    maxLines: 5,
                    decoration: InputDecoration(
                        labelText: 'Your Message',
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: FilledButton(
                    onPressed: () {
                      String _phNo =
                          '+91' + _phoneNumber.text.trim().toString();
                      String msg = _message.text.toString();
                      launchUrlString('sms:${_phNo}?body=${msg}',
                          mode: LaunchMode.platformDefault);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Send Message',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
