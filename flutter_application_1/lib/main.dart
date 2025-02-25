import 'package:flutter/material.dart';
import 'models/productManager.dart';
import 'models/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eCommerce App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Manager'),
        ),
        body: Center(
          child: Text('Welcome to the eCommerce App!'),
        ),
      ),
    );
  }
}
