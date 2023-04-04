import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newcycle_code_challenge/data/blocs/inventory_cubit/inventory_cubit.dart';
import 'package:newcycle_code_challenge/data/blocs/products_cubit/products_cubit.dart';
import 'package:newcycle_code_challenge/presentation/features/home/home_page.dart';
import 'package:newcycle_code_challenge/router/app_router.dart';
import 'package:newcycle_code_challenge/utils/app_colors.dart';
import 'package:newcycle_code_challenge/utils/locator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InventoryCubit>(create: (_) => getIt<InventoryCubit>()),
        BlocProvider<ProductsCubit>(create: (_) => getIt<ProductsCubit>()),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

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
