import 'package:flutter/material.dart';
import 'package:httpexample/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              product.brand,
              style: const TextStyle(color: Colors.deepPurple),
            ),
            Text(product.title)
          ],
        )
      ],
    );
  }
}
