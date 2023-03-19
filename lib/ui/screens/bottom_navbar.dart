import 'package:assignment05/ui/screens/add_task_screen.dart';
import 'package:assignment05/ui/screens/task_cancelled_screen.dart';
import 'package:assignment05/ui/screens/task_completed_screen.dart';
import 'package:assignment05/ui/screens/task_new_screen.dart';
import 'package:assignment05/ui/screens/task_progress_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/user_profile_widget.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedItem = 0;
  final List<Widget> _Screens = [
    NewTask(),
    CompletedTask(),
    CancelledTask(),
    ProgressTask(),
  ];
  final List<Color> _profileColor = [
    Colors.blueAccent,
    Colors.green,
    Colors.orange,
    Colors.deepPurpleAccent
  ];
  final List<Color> _iconbgColor = [
    Colors.black54,
    Colors.black12,
    Colors.deepOrangeAccent,
    Colors.deepPurple
  ];

  Widget _myFloatingBtn(){
    if(_selectedItem == 0){
      return FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()));
      }, child: Icon(Icons.add), backgroundColor: Colors.blueAccent,);
    } else{
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserProfileWidget(
              profileBackground: _profileColor[_selectedItem],
              iconBackground: _iconbgColor[_selectedItem],
            ),
            Expanded(child: _Screens[_selectedItem]),
          ],
        ),
      ),
      floatingActionButton: _myFloatingBtn(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black38,
        showUnselectedLabels: true,
        onTap: (index){
          _selectedItem = index;
          setState(() {});
        },
        elevation: 4,
        currentIndex: _selectedItem,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.new_label_outlined),label: 'New',backgroundColor: _profileColor[_selectedItem]),
          BottomNavigationBarItem(icon: Icon(Icons.done_outline),label: 'Completed',backgroundColor: _profileColor[_selectedItem]),
          BottomNavigationBarItem(icon: Icon(Icons.close_outlined),label: 'Cancelled',backgroundColor: _profileColor[_selectedItem]),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_outlined),label: 'Progress',backgroundColor: _profileColor[_selectedItem]),
        ],
      ),
    );
  }
}


