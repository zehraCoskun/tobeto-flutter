import 'package:flutter/material.dart';
import 'package:httpexample/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Brand: ${product.brand}',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 8),
              Image.network(
                product.images.isNotEmpty ? product.images[0] : '',
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 8),
              Text(
                'Price: \$${product.price}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
