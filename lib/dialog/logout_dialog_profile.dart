import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogoutDialogProfile {
  static void show(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Log Out"),
            content: Text('Log Out dari Learnout?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              TextButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: Text('Log Out'))
            ],
          );
        });
  }
}
