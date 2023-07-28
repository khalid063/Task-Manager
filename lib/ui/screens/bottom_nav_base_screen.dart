

import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/cancelled_task_screen.dart';
import 'package:task_manager/ui/screens/complete_task_screen.dart';
import 'package:task_manager/ui/screens/in_progress_task_screen.dart';
import 'package:task_manager/ui/screens/new_task_screen.dart';

class BottomNaveBaseScreen extends StatefulWidget {
  const BottomNaveBaseScreen({Key? key}) : super(key: key);

  @override
  State<BottomNaveBaseScreen> createState() => _BottomNaveBaseScreenState();
}

class _BottomNaveBaseScreenState extends State<BottomNaveBaseScreen> {

  int _selectedScreenIndex = 0;

  ///*** Bottom nav Screen List
  final List<Widget> _screens = const [
    NewTaskScreen(),
    InProgressTaskScreen(),
    CancelledTaskScreen(),
    CompletedTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
        ),
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        onTap: (int index){
          _selectedScreenIndex = index;
          print(_selectedScreenIndex);
          if (mounted){
            setState(() {});
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'New'),
          BottomNavigationBarItem(icon: Icon(Icons.account_tree), label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined), label: 'cancel'),
          BottomNavigationBarItem(icon: Icon(Icons.done_all), label: 'Conpleted'),
        ],
      ),
    );
  }
}
