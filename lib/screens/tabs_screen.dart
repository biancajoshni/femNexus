import 'package:flutter/material.dart';
//import 'completed_tasks_screen.dart';

//import 'add_task_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  static const id = 'tabs_screen';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("logged in")
    );
  }
}
