import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> eb335e5 (Reinitialized repository)
import 'health_page.dart';
import 'career_page.dart';
import 'community_page.dart';
import 'sos_page.dart';
<<<<<<< HEAD
=======
=======
//import 'completed_tasks_screen.dart';

//import 'add_task_screen.dart';
>>>>>>> f2d3c5a (Reinitialized repository)
>>>>>>> eb335e5 (Reinitialized repository)

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  static const id = 'tabs_screen';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> eb335e5 (Reinitialized repository)
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HealthPage(),
    CareerPage(),
    CommunityPage(),
    SOSPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
<<<<<<< HEAD
=======
=======
>>>>>>> f2d3c5a (Reinitialized repository)
>>>>>>> eb335e5 (Reinitialized repository)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> eb335e5 (Reinitialized repository)
      body: _pages[_selectedIndex],  // Display selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.purple[900],
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Career',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sos),
            label: 'SOS',
          ),
        ],
      ),
<<<<<<< HEAD
=======
=======
      body: Text("logged in")
>>>>>>> f2d3c5a (Reinitialized repository)
>>>>>>> eb335e5 (Reinitialized repository)
    );
  }
}
