import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final dialogController;
  Function()? addNewTask;

  DialogBox(
      {super.key, required this.dialogController, required this.addNewTask});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add New Task"),
      content: TextField(
        controller: dialogController,
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: "Add New Task"),
      ),
      actions: [
        TextButton(onPressed: addNewTask, child: Text("Add")),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"))
      ],
    );
    ;
  }
}
