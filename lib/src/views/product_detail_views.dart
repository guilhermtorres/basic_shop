import 'package:flutter/material.dart';
import 'package:shop/src/providers/product_providers.dart';

class ProductDetailViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.title,
        ),
      ),
    );
  }
}
