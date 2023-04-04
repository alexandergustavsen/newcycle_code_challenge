import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/presentation/features/product_details/product_details_page.dart';
import 'package:newcycle_code_challenge/presentation/features/products_pending/products_pending_page.dart';

mixin AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Future<T?> pushNamed<T extends Object>(
    String route, {
    Object? arguments,
  }) async {
    return navigatorKey.currentState?.pushNamed(
      route,
      arguments: arguments,
    );
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name ?? '');
    final route = uri.path;
    final arguments = settings.arguments as Map<String, Object?>?;

    switch (route) {
      case '':
      case AppRoutes.main:
        break;

      case ProductsPendingPage.routeName:
        return MaterialPageRoute<Widget>(
          builder: (_) => const ProductsPendingPage(),
          settings: settings,
        );

      case ProductDetailsPage.routeName:
        final product = arguments?[ProductDetailsPage.argumentName] as Product;
        return MaterialPageRoute<Widget>(
          builder: (_) => ProductDetailsPage(product: product),
          settings: settings,
        );
    }
    return null;
  }

  static void pop() => navigatorKey.currentState?.pop();
}

class AppRoutes {
  static const String main = '/';
}
