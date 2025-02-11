import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

          // Content Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Discover Your Path',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Health Section
                _buildSection(
                  title: 'Health',
                  description:
                      '• Wellness Resources & Fitness Programs\nExplore articles, tips, and personalized workouts designed for women.',
                ),

                const SizedBox(height: 20),

                // Career Section
                _buildSection(
                  title: 'Career',
                  description:
                      '• Job Opportunities & Skill Development\nFind diverse job listings and join workshops to advance your career.',
                ),

                const SizedBox(height: 20),

                // Community Section
                _buildSection(
                  title: 'Community',
                  description:
                      '• Networking & Support\nConnect with like-minded women and share experiences in a supportive space.',
                ),
              ],
            ),
          ),
        ],
      ),

     
    );
  }

  Widget _buildSection({required String title, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.purple[900],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          style: const TextStyle(fontSize: 14, color: Colors.black87),
        ),
      ],
    );
  }
}
