import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
  final String productName;
  final String productDescription;
  final double price;

  const DetailScreen({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(productName)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Product: $productName',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              'ProductDescription: $productDescription',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Price: UGX ${price.toStringAsFixed(0)}',
            ),
          ],
        ),
      ),
    );
  }
}