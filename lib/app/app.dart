import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newcycle_code_challenge/presentation/features/home/home_page.dart';
import 'package:newcycle_code_challenge/utils/app_colors.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cabinet-Grotesk',
        scaffoldBackgroundColor: AppColors.lightBackground,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
