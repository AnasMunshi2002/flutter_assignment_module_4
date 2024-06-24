import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uuid/uuid.dart';

class StudentList {
  var id;
  String name;
  String email;
  String phNumber;
  StudentList({
    required this.id,
    required this.name,
    required this.email,
    required this.phNumber,
  });
}

class UserListCRUD extends StatefulWidget {
  @override
  State<UserListCRUD> createState() => _UserListCRUDState();
}

class _UserListCRUDState extends State<UserListCRUD> {
  List studentlist = <StudentList>[];

  void _replaceListData(StudentList student) {
    var index = studentlist.indexWhere((element) => element.id == student.id);
    print(index);

    if (index != -1) {
      setState(() {
        studentlist[index] = student;
      });
    }
  }

  Future<bool?> _deleteStudent(BuildContext context, StudentList stud) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Delete'),
        content: Text('Are you sure you want to delete this student?'),
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('CANCEL'),
          ),
          FilledButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('CONFIRM'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FilledButton(
          onPressed: () async {
            StudentList? std = await openModalBottomSheet(context);

            setState(() {
              studentlist.insert(0, std);
            });
          },
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
              padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
              shape: MaterialStatePropertyAll(CircleBorder())),
          child: Icon(
            Icons.add,
            size: 40,
          ),
        ),
        appBar: AppBar(
          title: Text('User Details'),
        ),
        body: ListView.builder(
          itemCount: studentlist.length,
          itemBuilder: (context, index) {
            StudentList stud = studentlist[index];
            return Card(
              elevation: 10,
              shadowColor: Colors.blue.shade50,
              child: ListTile(
                onLongPress: () {
                  showMenu(
                    items: <PopupMenuEntry>[
                      PopupMenuItem(
                        child: ListTile(
                          onTap: () async {
                            var updatedStudent =
                                await openModalBottomSheet(context, stud);

                            if (updatedStudent != null) {
                              _replaceListData(updatedStudent);
                            }
                            Navigator.pop(context);
                          },
                          title: Text('Edit'),
                          leading: Icon(Icons.update),
                        ),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          onTap: () async {
                            var confirm = await _deleteStudent(context, stud);
                            print(confirm);
                            if (confirm != null) {
                              if (confirm) {
                                setState(() {
                                  studentlist.removeWhere(
                                      (element) => element.id == stud.id);
                                });
                              }
                            }
                            Navigator.pop(context);
                          },
                          title: Text('Delete'),
                          leading: Icon(Icons.delete),
                        ),
                      )
                    ],
                    context: context,
                    position: RelativeRect.fromLTRB(100, 150, 0, 0),
                  );
                },
                isThreeLine: true,
                leading: Icon(
                  Icons.supervised_user_circle,
                  size: 40,
                  color: Colors.blue,
                ),
                title: Text('${stud.name}'),
                subtitle: Text(
                    'id : ${stud.id}\nemail : ${stud.email}\nphone : ${stud.phNumber}'),
              ),
            );
          },
        ));
  }

  Future<StudentList?> openModalBottomSheet(BuildContext context,
      [StudentList? student]) async {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _phoneController = TextEditingController();

    if (student != null) {
      _nameController.text = student.name;
      _emailController.text = student.email;
      _phoneController.text = student.phNumber;
    }
    return await showModalBottomSheet(
      isDismissible: false,
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
                controller: _emailController,
                decoration: InputDecoration(
                    label: Text('Email'), border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _phoneController,
                decoration: InputDecoration(
                    label: Text('Phone No'), border: OutlineInputBorder()),
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
                      String email = _emailController.text.trim();
                      String phone = _phoneController.text.trim();

                      var id = Uuid();
                      print(id);
                      if (name == null || email == null || phone == null) {
                        Fluttertoast.showToast(msg: 'Please enter details');
                      } else {
                        Navigator.pop(
                            context,
                            StudentList(
                                id: student?.id != null ? student?.id : id.v4(),
                                name: name,
                                email: email,
                                phNumber: phone));
                      }
                    },
                    child: Text(
                      student != null ? 'UPDATE' : 'INSERT',
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
