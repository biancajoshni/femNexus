import 'package:flutter/material.dart';

class HealthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Health'), backgroundColor: Colors.purple[800]),
      body: Center(child: Text('Health Page Content')),
    );
  }
}
