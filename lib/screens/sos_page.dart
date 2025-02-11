import 'package:flutter/material.dart';

class SosPage extends StatelessWidget {
  const SosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50], // Light purple background
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Logo and Title Section
          Container(
            color: Colors.purple[100], // Soft Purple Theme
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png', // Replace with your actual logo asset
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
                  'Ensuring Women’s Safety, Anytime, Anywhere',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Page Title
          Center(
            child: Text(
              'Quick Help & Emergency Support',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.purple[900],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Emergency Options Section
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
                  'Emergency Actions',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[700],
                  ),
                ),
                const SizedBox(height: 10),

                // Emergency Feature Cards
                _sosFeatureCard('Call Emergency Contacts', Icons.call, Colors.purple[300]!),
                _sosFeatureCard('Share Live Location', Icons.location_pin, Colors.purple[400]!),
                _sosFeatureCard('Send Distress Alert', Icons.notification_important, Colors.purple[500]!),
                _sosFeatureCard('Nearby Safe Spots', Icons.map, Colors.purple[600]!),
              ],
            ),
          ),

          const Spacer(),

         
        ],
      ),
    );
  }

  // Helper function for SOS feature cards
  Widget _sosFeatureCard(String title, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, size: 30, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
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
