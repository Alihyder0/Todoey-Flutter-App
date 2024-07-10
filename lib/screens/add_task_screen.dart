import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/task.dart';
import 'package:todoey/Model/task_data.dart';
import 'package:todoey/constant.dart';
import 'package:todoey/widgets/task_list.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newtaskTitle;
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 14,
          ),
          Text(
            'Add Task',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlueAccent),
          ),
          TextField(
            cursorColor: Colors.lightBlueAccent,
            autofocus: true,
            decoration: kInputStyle,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newtaskTitle = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newtaskTitle!);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              backgroundColor: Colors.lightBlueAccent,
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
