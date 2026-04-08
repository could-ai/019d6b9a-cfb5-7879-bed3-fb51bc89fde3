import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Founder\'s Fuel'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/about'),
            child: const Text('About', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/contact'),
            child: const Text('Contact', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/login'),
            child: const Text('Login', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Founder\'s Fuel',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Connect emerging startups with talented fresh graduates in engineering, architecture, law, finance, and more. Overcome budget limits and gain real-world experience through internships, projects, and partnerships.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/signup'),
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}