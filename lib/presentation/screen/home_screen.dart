import 'package:flutter/material.dart';

import '../../domain/usecase/advice_use_case.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.useCase});

  final GetRandomAdviceUseCase useCase;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String advice = 'initadvice';

  Future<void> refresh() async {
    final a = await widget.useCase();
    setState(() {
      advice = a.advice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(advice, textAlign: TextAlign.center),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => refresh(),
              child: const Text('refresh'),
            )
          ],
        ),
      ),
    );
  }
}
