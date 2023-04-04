import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newcycle_code_challenge/app/app.dart';
import 'package:newcycle_code_challenge/app/app_bloc_observer.dart';
import 'package:newcycle_code_challenge/utils/locator.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  runApp(const App());
}
