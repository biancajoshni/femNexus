// TODO Implement this library.
import 'package:flutter/material.dart';

class SOSPage extends StatelessWidget {
  const SOSPage({super.key});

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
    ]));
  }
}
