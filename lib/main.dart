import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_map_project/presentation/screens/splash/login_screen.dart';
import 'lang/codegen_loader.g.dart';

import 'di/app_di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await EasyLocalization.ensureInitialized();
  runApp( EasyLocalization(
    supportedLocales: const [Locale('en'), Locale('uz'), Locale('ru')],
    path: 'assets/translation',
    fallbackLocale: const Locale('uz'),
    assetLoader: const CodegenLoader(),
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
    );
  }
}
