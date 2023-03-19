import 'package:flutter/material.dart';

class TaskListItems extends StatelessWidget {
  const TaskListItems({
    Key? key,
    required this.title,
    required this.detail,
    required this.date,
    required this.group,
    required this.onPressEdit,
    required this.onPressDelete,
    required this.groupColor,
  }) : super(key: key);

  final String title, detail, date, group;
  final VoidCallback onPressEdit, onPressDelete;
  final Color groupColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(height: 4),
            Text(
              detail,
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Text('Date : ' + date),
            const SizedBox(height: 6),
            Row(
              children: [
                Chip(
                  label: Text(
                    group,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: groupColor,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}