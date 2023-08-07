import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/constants.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(' Full Name'),
            const SizedBox(height: 10),
            const TextField(
              style: TextStyle(fontSize: 16, color: ebony),
            ),
            const SizedBox(height: 20),
            const Text(' Email'),
            const SizedBox(height: 10),
            const TextField(
              style: TextStyle(fontSize: 16, color: ebony),
            ),
            const SizedBox(height: 20),
            const Text(' Password'),
            const SizedBox(height: 10),
            const TextField(
              style: TextStyle(fontSize: 16, color: ebony),
            ),
            const SizedBox(height: 20),
            const Text(' Confirm Password'),
            const SizedBox(height: 10),
            const TextField(
              style: TextStyle(fontSize: 16, color: ebony),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sign Up'),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?  '),
                GestureDetector(
                  onTap: () {
                    context.go('/login');
                  },
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(color: dimGray),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
