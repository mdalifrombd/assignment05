import 'package:assignment05/ui/screens/bottom_navbar.dart';
import 'package:assignment05/ui/screens/update_profile_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
          body: UpdateProfile(),
      ),
    );
  }
}
