import 'package:assignment05/ui/widgets/screen_background.dart';
import 'package:assignment05/ui/widgets/task_list_widget.dart';
import 'package:flutter/material.dart';

class ProgressTask extends StatefulWidget {
  const ProgressTask({Key? key}) : super(key: key);

  @override
  State<ProgressTask> createState() => _ProgressTaskState();
}

class _ProgressTaskState extends State<ProgressTask> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
        widget: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TaskListItems(
                      title: 'What is Lorem Ipsum?',
                      detail:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      date: '12/12/2012',
                      group: 'In Progress',
                      groupColor: Colors.deepPurpleAccent,
                      onPressEdit: () {},
                      onPressDelete: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}


