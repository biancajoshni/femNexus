import 'package:flutter/material.dart';
import '../services/api_service.dart';
import 'breastcancer.dart'; // Import the new page
import 'menstrualtracker_screen.dart';
class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  String _pcosResult = "";
  String _periodDate = "";

  void _predictPCOS() async {
    List<double> features = [1.0, 2.5, 3.0, 4.2]; // Sample input values
    try {
      String result = await ApiService.predictPCOS(features);
      setState(() {
        _pcosResult = result;
      });
    } catch (e) {
      print("Error: $e");
    }
  }

 void _navigateToTracker() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Tracker()),
    );
  }


  void _navigateToBreastCancer() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BreastCancer()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light background
      body: SingleChildScrollView(
        child: Column(
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

            // Prediction Buttons Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: _predictPCOS,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[900],
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                    ),
                    child: const Text("Check PCOS",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  Text("PCOS Result: $_pcosResult",
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  
                  ElevatedButton(
                    onPressed: _navigateToTracker,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[900],
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                    ),
                    child: const Text("Predict Period",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  Text("Next Period: $_periodDate",
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),

                  // New Breast Cancer Button
                  ElevatedButton(
                    onPressed: _navigateToBreastCancer,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[900], // Pink for breast cancer awareness
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                    ),
                    child: const Text("Breast Cancer",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


