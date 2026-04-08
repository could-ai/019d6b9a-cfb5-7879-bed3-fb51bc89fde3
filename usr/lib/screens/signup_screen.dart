import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fieldController = TextEditingController(); // For freshers
  final _companyController = TextEditingController(); // For startups
  String _userType = 'Fresher';

  void _signup() {
    // Mock signup logic
    if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Signup Successful'),
          content: Text('Account created for $_userType!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: _userType,
              items: ['Fresher', 'Startup'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _userType = value!;
                });
              },
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            if (_userType == 'Fresher')
              TextField(
                controller: _fieldController,
                decoration: const InputDecoration(labelText: 'Field (e.g., Engineering)'),
              ),
            if (_userType == 'Startup')
              TextField(
                controller: _companyController,
                decoration: const InputDecoration(labelText: 'Company Name'),
              ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _signup,
              child: const Text('Sign Up'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}