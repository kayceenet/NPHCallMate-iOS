import 'package:flutter/material.dart';
import 'roster_engine.dart';

void main() {
  runApp(const NPHCallMateApp());
}

class NPHCallMateApp extends StatelessWidget {
  const NPHCallMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NPH Call Mate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NPH Call Duty Roster'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.calendar_month, size: 64, color: Colors.teal),
            const SizedBox(height: 16),
            const Text(
              'Roster Engine Ready',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Text(RosterEngine.footer),
          ],
        ),
      ),
    );
  }
}
