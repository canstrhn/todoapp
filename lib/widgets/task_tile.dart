import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function onCheckboxClicked;
  final Function onLongPress;
  const TaskTile({
    this.title,
    this.isDone,
    this.onCheckboxClicked,
    this.onLongPress,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        this.title,
        style: TextStyle(color: Colors.blueAccent,
            decoration: isDone? TextDecoration.lineThrough : null,
            fontWeight: FontWeight.bold),
      ),
      trailing: Checkbox(
        value: isDone,
        activeColor: Colors.blueAccent,
        onChanged: onCheckboxClicked,
      ),
    );
  }
}