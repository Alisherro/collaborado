import 'package:collaborado/config/app_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'config/app_router.dart';
import 'config/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(
          value: AppDependencies.provideGetAdviceByIdUseCase(),
        ),
        Provider.value(
          value: AppDependencies.provideGetRandomAdviceUseCase(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: AppTheme.themeData,
        title: 'Flutter App',
        // theme: AppTheme.themeData,
      ),
    );
  }
}
