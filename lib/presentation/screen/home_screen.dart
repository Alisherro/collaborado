import 'package:collaborado/presentation/logic/advice_cubit/advice_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../domain/usecase/advice_use_case.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<AdviceCubit, AdviceState>(
              builder: (context, state) {
                if (state is AdviceLoading) {
                  return const Text('loading.....',
                      textAlign: TextAlign.center);
                } else if (state is AdviceSuccess) {
                  return Text(state.advice, textAlign: TextAlign.center);
                } else {
                  return const Text('error :(', textAlign: TextAlign.center);
                }
              },
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                context.read<AdviceCubit>().getRandomAdvice();
              },
              child: const Text('refresh'),
            )
          ],
        ),
      ),
    );
  }
}
