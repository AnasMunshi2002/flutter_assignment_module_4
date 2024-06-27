import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uuid/uuid.dart';

class EditViewDelOption extends StatefulWidget {
  @override
  State<EditViewDelOption> createState() => _EditViewDelOptionState();
}

class Data {
  String title;
  String subtitle;
  int number;

  Data({required this.title, required this.subtitle, required this.number});
}

class _EditViewDelOptionState extends State<EditViewDelOption> {
  List<Data> _dataList = [
    Data(title: 'Anas', subtitle: 'Flutter Developer', number: 1),
    Data(title: 'Harsh', subtitle: 'Software Tester', number: 2),
    Data(title: 'Rahil', subtitle: 'Software Tester', number: 3),
    Data(title: 'Rupin', subtitle: 'AI', number: 4),
    Data(title: 'Jaimin', subtitle: 'Android Developer', number: 5),
  ];

  Future<bool> _delete(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('You want to delete'),
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('NO'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text('YES'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Context Menu'),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: _dataList.length,
            itemBuilder: (context, index) => ListTile(
              title:
                  Text('${_dataList[index].number}. ${_dataList[index].title}'),
              subtitle: Text('${_dataList[index].subtitle}'),
              leading: Icon(Icons.person_outline),
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewWidget(
                                name: _dataList[index].title,
                                position: _dataList[index].subtitle,
                                number: _dataList[index].number),
                          ));
                    },
                    value: 0,
                    child: ListTile(
                      title: Text('View'),
                      leading: Icon(Icons.remove_red_eye),
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      var _result =
                          await _openEditSheet(context, _dataList[index]);
                      setState(() {
                        _dataList[index] = _result!;
                      });
                    },
                    child: ListTile(
                      title: Text('Edit'),
                      leading: Icon(Icons.edit),
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      var del = await _delete(context);
                      if (del) {
                        setState(() {
                          _dataList.removeAt(index);
                        });
                      }
                    },
                    child: ListTile(
                      title: Text('Delete'),
                      leading: Icon(Icons.delete_forever),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Future<Data?> _openEditSheet(BuildContext context, [Data? person]) async {
    final _nameController = TextEditingController();
    final _positionController = TextEditingController();
    final _numberController = TextEditingController();

    if (person != null) {
      _nameController.text = person.title;
      _positionController.text = person.subtitle;
      _numberController.text = person.number.toString();
    }
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 25,
              bottom: MediaQuery.of(context).viewInsets.bottom + 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Enter Details',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    label: Text('Name'), border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _positionController,
                decoration: InputDecoration(
                    label: Text('Position'), border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('CANCEL'),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: FilledButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.lightBlueAccent)),
                    onPressed: () {
                      String name = _nameController.text.trim();
                      String position = _positionController.text.trim();

                      var id = Uuid();
                      print(id);
                      if (name == null || position == null) {
                        Fluttertoast.showToast(msg: 'Please enter details');
                      } else {
                        Navigator.pop(
                            context,
                            Data(
                                title: name,
                                subtitle: position,
                                number: person!.number));
                      }
                    },
                    child: Text(
                      'UPDATE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class ViewWidget extends StatelessWidget {
  String name;
  String position;
  int number;

  ViewWidget(
      {required this.name, required this.position, required this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Details'),
      ),
      body: Center(
        child: Container(
          child: Text('''
          
          $number. Name : $name
          Role : $position
          '''),
        ),
      ),
    );
  }
}
