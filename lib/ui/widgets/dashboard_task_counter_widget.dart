import 'package:flutter/material.dart';

class DashboardItemCounter extends StatelessWidget {
  const DashboardItemCounter({
    Key? key, required this.numberOfTask, required this.typeOfTask,
  }) : super(key: key);

  final int numberOfTask;
  final String typeOfTask;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(padding: EdgeInsets.all(8.00),
        child: Column(
          children: [
            Text(numberOfTask.toString(), style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 8,),
            FittedBox(child: Text(typeOfTask))
          ],
        ),),
    );
  }
}