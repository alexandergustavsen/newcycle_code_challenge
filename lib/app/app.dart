import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newcycle_code_challenge/presentation/features/home/home_page.dart';
import 'package:newcycle_code_challenge/router/app_router.dart';
import 'package:newcycle_code_challenge/utils/app_colors.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      navigatorKey: AppRouter.navigatorKey,
      theme: ThemeData(
        fontFamily: 'CabinetGrotesk',
        scaffoldBackgroundColor: AppColors.lightBackground,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.black),
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
