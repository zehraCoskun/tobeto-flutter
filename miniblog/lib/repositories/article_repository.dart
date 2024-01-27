import 'dart:convert';
import 'package:miniblog/models/blog.dart';
import 'package:http/http.dart' as http;

const mainURL = "https://tobetoapi.halitkalayci.com/api/Articles/";

class ArticleRepository {
  //?hepsini getir
  Future<List<Blog>> fetchBlogs() async {
    Uri url = Uri.parse(mainURL);
    final response = await http.get(url);
    final List jsonData = json.decode(response.body);
    return jsonData.map((json) => Blog.fromJson(json)).toList();
  }

  //?id ile getir
  Future<Blog> fetchBlog(String id) async {
    final response = await http.get(Uri.parse("$mainURL$id"));
    if (response.statusCode == 200) {
      final resultBlog = json.decode(response.body);
      Blog blog = Blog.fromJson(resultBlog);
      return blog;
    } else {
      throw Exception("Hata : ${response.statusCode}");
    }
  }

  /*var uri = Uri.https('example.com', 'create');
    var request = http.MultipartRequest('POST', uri)
     ..fields['user'] = 'nweiz@google.com'
     ..files.add(await http.MultipartFile.fromPath(
       'package', 'build/package.tar.gz',
       contentType: MediaType('application', 'x-tar')));
    var response = await request.send();
    if (response.statusCode == 200) print('Uploaded!');*/
  //?blog ekle
  Future<bool> addToBlogs(String title, String content, String author, selectedImage) async {
    final request = http.MultipartRequest('POST', Uri.parse(mainURL));
    request.fields['Title'] = title;
    request.fields['Content'] = content;
    request.fields['Author'] = author;
    if (selectedImage != null) {
      final imageFile = await http.MultipartFile.fromPath('File', selectedImage);
      request.files.add(imageFile);
    }
    var response = await request.send();
    if (response.statusCode == 200) {
      return true;
    } else {
      print(response.statusCode);
      return false;
    }
  }

  //?blog silme
  Future<bool> deleteFromBlogs(String id) async {
    final request = http.MultipartRequest('DELETE', Uri.parse("$mainURL$id"));
    final response = await request.send();
    if (response.statusCode == 200) {
      return true;
    } else {
      print(response.statusCode);
      return false;
    }
  }
}
