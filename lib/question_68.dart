import 'package:flutter/material.dart';

class EditViewDelOption extends StatefulWidget {
  @override
  State<EditViewDelOption> createState() => _EditViewDelOptionState();
}

class _EditViewDelOptionState extends State<EditViewDelOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Context Menu'),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) => ListTile(
              title: Text('${index + 1}. Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person_outline),
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () {
                      _openEditSheet();
                    },
                    value: 0,
                    child: Text('View'),
                  ),
                  PopupMenuItem(
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    child: Text('Delete'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void _openEditSheet() {}
}
