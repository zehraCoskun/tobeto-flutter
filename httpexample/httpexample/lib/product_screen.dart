import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:httpexample/product_item.dart';
import 'package:httpexample/product_model.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductModel> productList = [];

  @override
  void initState() {
    super.initState;
    getProducts();
  }

  Future<List<ProductModel>> getProducts() async {
    List<ProductModel> products = [];
    Uri url = Uri.https("dummyjson.com", "products");
    final response = await http.get(url);
    final dataJson = (json.decode(response.body))['products'];
    for (Map<String, dynamic> json in dataJson) {
      products.add(ProductModel.fromJson(json));
    }
    setState(() {
      productList = products;
    });

    return products;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productList.length,
        itemBuilder: (ctx, index) => ProductItem(
              product: productList[index],
            ));
  }
}
