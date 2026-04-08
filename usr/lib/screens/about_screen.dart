import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Founder\'s Fuel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'About Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Founder\'s Fuel is a bridge between ideas and talent. We connect startups with fresh graduates for mutual growth in innovation, skills, and networking. Our platform addresses startup budget challenges and provides freshers with meaningful opportunities.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}