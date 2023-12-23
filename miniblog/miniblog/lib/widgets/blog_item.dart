import 'package:flutter/material.dart';
import 'package:miniblog/models/blog.dart';
import 'package:miniblog/screens/detail_screen.dart';

class BlogItem extends StatelessWidget {
  const BlogItem({super.key, required this.blog});
  final Blog blog;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          AspectRatio(aspectRatio: 4 / 2, child: Container(color: Colors.grey[300], width: double.infinity, child: Image.network(blog.thumbnail))),
          ListTile(
            title: Text(blog.title),
            subtitle: Text(blog.author),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    blogItem: blog,
                  ),
                ),
              );
            },
          )
        ]),
      ),
    );
  }
}
