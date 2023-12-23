import 'package:flutter/material.dart';
import 'package:miniblog/models/blog.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.blogItem});
  final Blog blogItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blogItem.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Image.network(blogItem.thumbnail),
                Text(blogItem.content),
                Text(blogItem.author),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
