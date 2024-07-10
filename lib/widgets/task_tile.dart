import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.isChecked,
      this.checkBoxCallBack,
      this.taskTitle,
      this.onlongPress});
  final String? taskTitle;
  final bool? isChecked;
  final void Function(bool?)? checkBoxCallBack;
  final void Function()? onlongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onlongPress,
        title: Text(
          taskTitle!,
          style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack,
        ));
  }
}
