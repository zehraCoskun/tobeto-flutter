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

  void getProducts() async {
    Uri url = Uri.https("dummyjson.com", "products");
    final response = await http.get(url);
    final dataJson = json.decode(response.body);

    List<ProductModel> products = [];

    for (var productJson in dataJson["products"]) {
      if (productJson["price"] is int) {
        productJson["price"] = productJson["price"].toDouble();
      }

      ProductModel productModel = ProductModel(
        //raiting: productJson["raiting"],
        id: productJson["id"],
        title: productJson["title"],
        description: productJson["description"],
        price: productJson["price"],
        discountPercentage: productJson["discountPercentage"],
        stock: productJson["stock"],
        brand: productJson["brand"],
        category: productJson["category"],
        thumbnail: productJson["thumbnail"],
        images: productJson["images"],
      );
      products.add(productModel);
    }
    setState(() {
      productList = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (ctx, index) => ProductItem(
                product: productList[index],
              )),
    );
  }
}
