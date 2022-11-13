import 'dart:convert';

import 'package:apihttp/post.model.dart';
import 'package:http/http.dart';

class HttpService {
  final String postsUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>?> getPosts() async {
    Response res = await get(Uri.parse(postsUrl));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw ("You can't get posts");
    }
  }

  // Future<void> deletePost(int id) async {
  //   Response res = await delete(Uri.parse("$postsUrl/$id"));

  //   if (res.statusCode == 200) {
  //     print("deleted");
  //   }
  // }

}
