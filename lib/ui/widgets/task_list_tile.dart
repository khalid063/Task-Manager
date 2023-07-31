import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('Title Will be Here'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('subtitle will be hare'),
            Text('Date'),
            Row(
              children: [
                Chip(
                  label: Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.blue,
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete, color: Colors.red.shade300,)),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.green,)),
              ],
            )
          ],
        )
    );
  }
}