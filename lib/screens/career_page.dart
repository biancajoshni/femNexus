import 'package:flutter/material.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light background
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Logo and Title Section
          Container(
            color: Colors.purple[100], // Background for the top section
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png', // Replace with your logo asset
                  height: 80,
                ),
                const SizedBox(height: 10),
                Text(
                  'FEMNEXUS',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[900],
                  ),
                ),
                const Text(
                  'App for Empowering Women Health, Career, and Community',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Career Page Title
          Center(
            child: Text(
              'Opportunities Designed for You!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.purple[900],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Upcoming Events Section
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.purple[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  'Upcoming Events',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[700],
                  ),
                ),
                const SizedBox(height: 10),
                
                // Event Cards
                _eventCard('Event 1', Colors.purple[200]!),
                _eventCard('Event 2', Colors.purple[300]!),
                _eventCard('Event 3', Colors.purple[400]!),
                _eventCard('Event 4', Colors.purple[500]!),
              ],
            ),
          ),

          const Spacer(),

         
        ],
      ),
    );
  }

  // Helper function for event cards
  Widget _eventCard(String title, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  // Helper function for bottom navigation items
  Widget _bottomNavItem(String label, IconData icon, Color color, {bool selected = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 24, color: color),
        Text(
          label,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: color),
        ),
      ],
    );
  }
}
