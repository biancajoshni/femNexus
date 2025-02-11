import 'package:flutter/material.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Career'), backgroundColor: Colors.purple[800]),
      body: Center(child: Text('Career Page Content')),
    );
  }
}
