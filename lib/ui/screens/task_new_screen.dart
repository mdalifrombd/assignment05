import 'package:assignment05/ui/widgets/screen_background.dart';
import 'package:assignment05/ui/widgets/task_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:assignment05/ui/widgets/dashboard_task_counter_widget.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
        widget: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            DashboardItemCounter(
              numberOfTask: 15,
              typeOfTask: 'New Task',
            ),
            DashboardItemCounter(
              numberOfTask: 15,
              typeOfTask: 'Completed',
            ),
            DashboardItemCounter(
              numberOfTask: 15,
              typeOfTask: 'Cancelled',
            ),
            DashboardItemCounter(
              numberOfTask: 15,
              typeOfTask: 'In Progress',
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TaskListItems(
                  title: 'What is Lorem Ipsum?',
                  detail:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  date: '12/12/2012',
                  group: 'New',
                  groupColor: Colors.blueAccent,
                  onPressEdit: () {},
                  onPressDelete: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}


