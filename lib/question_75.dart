import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ActivityLifeCycle extends StatefulWidget {
  @override
  _ActivityLifeCycleState createState() => _ActivityLifeCycleState();
}

class _ActivityLifeCycleState extends State<ActivityLifeCycle> {
  @override
  void initState() {
    super.initState();
    showToast("Init State");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    showToast("Did Change Dependencies");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Lifecycle & Toast"),
      ),
      body: Center(
        child: Text("Widget Lifecycle Stages Example"),
      ),
    );
  }

  @override
  void didUpdateWidget(ActivityLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    showToast("Did Update Widget");
  }

  @override
  void deactivate() {
    showToast("Deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    showToast("Dispose");
    super.dispose();
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
    );
  }
}
