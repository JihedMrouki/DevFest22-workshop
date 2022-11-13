import 'package:apihttp/http_service.dart';
import 'package:flutter/material.dart';
import 'post.model.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  final HttpService httpService = HttpService();
  PostDetail({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text('Title'),
                  subtitle: Text(post.title),
                ),
                ListTile(
                  title: const Text('Id'),
                  subtitle: Text(post.id.toString()),
                ),
                ListTile(
                  title: const Text('Title'),
                  subtitle: Text(post.title),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
