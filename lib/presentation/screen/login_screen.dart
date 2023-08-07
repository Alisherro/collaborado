import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/constants.dart';
import '../widget/check_box_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            const SizedBox(height: 10),
            Row(
              children: [
                CustomCheckbox(
                  isChecked: false,
                  onChange: () {},
                ),
                const SizedBox(width: 5),
                const Text('Remember me'),
                const Spacer(),
                const Text(
                  'Forgot Password?',
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?  '),
                GestureDetector(
                  onTap: () {
                    context.go('/registration');
                  },
                  child: const Text(
                    'SIGN UP',
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
