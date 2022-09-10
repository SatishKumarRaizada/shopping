import 'package:flutter/material.dart';
import 'package:my_shopping/feature/tabs/app_tab.dart';
import 'package:my_shopping/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AppTab(),
    );
  }
}
