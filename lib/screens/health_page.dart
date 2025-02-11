import 'package:flutter/material.dart';
import '../services/api_service.dart';

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

  void _predictPeriod() async {
    try {
      String result = await ApiService.predictPeriod("2025-02-01");
      setState(() {
        _periodDate = result;
      });
    } catch (e) {
      print("Error: $e");
    }
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
                    onPressed: _predictPeriod,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
