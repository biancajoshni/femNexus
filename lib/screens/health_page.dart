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
      appBar: AppBar(title: Text("Health Predictions")),
      body: Column(
        children: [
          ElevatedButton(onPressed: _predictPCOS, child: Text("Check PCOS")),
          Text("PCOS Result: $_pcosResult"),
          ElevatedButton(
              onPressed: _predictPeriod, child: Text("Predict Period")),
          Text("Next Period: $_periodDate"),
        ],
      ),
    );
  }
}
