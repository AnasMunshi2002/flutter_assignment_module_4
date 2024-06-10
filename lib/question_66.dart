import 'package:flutter/material.dart';

class SelectDate extends StatefulWidget {
  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  String _date = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Date'),
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() async {
                  await _showDatePicker(context).toString();
                });
              },
              child: Text('Choose Date'),
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              'Date picked : $_date',
              style: TextStyle(fontSize: 16),
            ),
          ],
        )),
      ),
    );
  }

  Future<DateTime?> _showDatePicker(BuildContext context) async {
    DateTime? _selectedDate = await showDatePicker(
        context: context,
        firstDate: DateTime(
          2000,
        ),
        initialDate: DateTime.now(),
        lastDate: DateTime(2050));

    if (_selectedDate != null) {
      setState(() {
        _date = _selectedDate.toString().split(' ')[0];
      });
    } else {
      setState(() {
        _date = ' ';
      });
    }
  }
}
