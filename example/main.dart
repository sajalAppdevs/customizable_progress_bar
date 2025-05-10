import 'package:flutter/material.dart';
import 'package:customizable_progress_bar/customizable_progress_bar.dart';

void main() {
  runApp(const MyProgressDemoApp());
}

class MyProgressDemoApp extends StatelessWidget {
  const MyProgressDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgressDemoScreen(),
      theme: ThemeData.dark(),
    );
  }
}

class ProgressDemoScreen extends StatefulWidget {
  @override
  State<ProgressDemoScreen> createState() => _ProgressDemoScreenState();
}

class _ProgressDemoScreenState extends State<ProgressDemoScreen> {
  double _progress = 0.0;

  void _increaseProgress() {
    setState(() {
      _progress += 0.1;
      if (_progress > 1.0) _progress = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Customizable Progress Bars")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressBar(
              progress: _progress,
              height: 20,
              progressColor: Colors.amber,
              backgroundColor: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(16),
            ),
            const SizedBox(height: 40),
            CircularProgressBar(
              progress: _progress,
              size: 120,
              strokeWidth: 10,
              progressColor: Colors.pinkAccent,
              backgroundColor: Colors.grey.shade800,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _increaseProgress,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: const Text("Increase Progress"),
            ),
          ],
        ),
      ),
    );
  }
}
