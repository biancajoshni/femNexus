import 'package:flutter/material.dart';
import 'health_page.dart'; // Import HealthPage

class BreastCancer extends StatelessWidget {
  const BreastCancer({super.key});

  void _navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HealthPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: const Text("Breast Cancer Awareness"),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => _navigateToHome(context),
            tooltip: "Go to Home",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Your health matters! Breast cancer is one of the most common cancers among women, but early detection can save lives. This section is dedicated to empowering you with knowledge, support, and resources to take charge of your health.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            _buildInfoCard(
              '🔍 Know the Signs',
              'Learn about early symptoms and when to consult a doctor.',
            ),
            _buildInfoCard(
              '🖐️ Self-Check Guide',
              'Step-by-step instructions with images to help you perform regular breast self-exams.',
            ),
            _buildInfoCard(
              '🤝 Support & Stories',
              'Hear inspiring stories from survivors and connect with a supportive community.',
            ),
            const SizedBox(height: 20),
            const Text(
              'Stay informed, stay healthy. 💕',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFE2BAE6),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
