import 'package:flutter/material.dart';
import 'package:shop/src/providers/cart_providers.dart';
import 'package:shop/src/providers/products_providers.dart';
import 'package:shop/src/utils/app_routes_utils.dart';
import 'package:shop/src/views/product_detail_views.dart';
import 'package:shop/src/views/product_overview_views.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        )
      ],
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewViews(),
        routes: {AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailViews()},
      ),
    );
  }
}
