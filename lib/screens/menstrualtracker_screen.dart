import 'package:flutter/material.dart';
import 'health_page.dart'; // Import HealthPage

class Tracker extends StatelessWidget {
  const Tracker({super.key});

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
        title: const Text("Menstrual Cycle Tracker"),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => _navigateToHome(context),
            tooltip: "Go to Home",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Track your menstrual cycle and predict your next period with ease. Stay informed about your cycle length and patterns!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),

              // Cycle Progress Circle
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xFFE3BAE6),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Day 1\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'of Cycle',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 30),

              // Cycle Info Cards
              _buildInfoCard(
                '📅 Last Period',
                'Date of your last period: Jan 15, 2025',
              ),
              _buildInfoCard(
                '📏 Cycle Length',
                'Your average cycle length: 28 days',
              ),
              _buildInfoCard(
                '🔮 Next Predicted Period',
                'Estimated start date: Feb 12, 2025',
              ),

              const SizedBox(height: 20),

              const Text(
                'Stay on track and take control of your menstrual health! 💕',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFBFC3C8),
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
