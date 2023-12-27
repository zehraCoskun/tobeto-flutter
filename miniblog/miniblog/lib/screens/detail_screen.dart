import 'package:flutter/material.dart';
import 'package:miniblog/models/blog.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.blog});
  final Blog blog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Blog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Image.network(blog.thumbnail),
                Text(blog.content),
                Text(blog.author),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
