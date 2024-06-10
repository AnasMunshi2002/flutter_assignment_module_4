import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CityDialog extends StatefulWidget {
  @override
  State<CityDialog> createState() => _CityDialogState();
}

class _CityDialogState extends State<CityDialog> {
  String _city = '';

  List<String> cities = [
    'Surat',
    'Jamnagar',
    'Junagadh',
    'Kheda',
    'Ahmedabad',
    'Amreli',
    'Banaskantha',
    'Bharuch',
    'Bhavnagar',
    'Dang',
    'Kachchh',
    'Mehsana',
    'Panchmahal',
    'Rajkot',
    'Sabarkantha',
    'Vadodara',
    'Surendranagar',
    'Aravalli',
    'Patan',
    'Ahmedabad',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Cities'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton(
            child: Text('Select City'),
            onPressed: () async {
              var result = await _showRadioDialog(context);
              print(result);
              if (result != null) {
                setState(() {
                  _city = result!;
                });
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'City Selected : $_city',
            style: TextStyle(fontSize: 20),
          ),
        ],
      )),
    );
  }

  Future<String?> _showRadioDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => Dialog(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                'Select City :',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: MediaQuery.of(context).size.height / 2,
              child: StatefulBuilder(
                builder: (context, setState) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: cities.length,
                    itemBuilder: (context, index) {
                      return MaterialButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          setState(() => _city = cities[index]);
                          //_changeRadio(cities[index]);
                        },
                        child: Row(
                          children: [
                            Radio(
                              value: cities[index],
                              groupValue: _city,
                              onChanged: (value) {
                                setState(() => _city = cities[index]);
                              },
                            ),
                            Text(
                              cities[index],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('CANCEL'),
                ),
                FilledButton(
                  child: Text('SELECT'),
                  onPressed: () {
                    Navigator.pop(context, _city);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  /*void _changeRadio(String? value) {
    setState(() {
      city = value;
    });
  }*/
}
