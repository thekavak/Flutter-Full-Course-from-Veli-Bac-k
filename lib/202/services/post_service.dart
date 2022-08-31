import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:veli_hoca/202/services/comment_model.dart';
import 'package:veli_hoca/202/services/post_model.dart';

abstract class IPostService {
  Future<List<PostModel11>?> fecthPostItemsAdvance();
  Future<bool> addItemToService(PostModel11 model);
  Future<bool> putItemToService(PostModel11 model, int id);
  Future<List<CommentModel>?> fecthPostComments(int postId);
}

class PostService implements IPostService {
  late final Dio _dio;

  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  @override
  Future<List<PostModel11>?> fecthPostItemsAdvance() async {
    final response = await _dio.get(_PostServicePaths.posts.name);

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => PostModel11.fromJson(e)).toList();
      }
    } else {
      return null;
    }
  }

  @override
  Future<List<CommentModel>?> fecthPostComments(int postId) async {
    final response = await _dio.get(_PostServicePaths.comments.name,
        queryParameters: {_PostServiceQueryParameters.postId.name: postId});

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => CommentModel.fromJson(e)).toList();
      }
    } else {
      return null;
    }
    return null;
  }

  @override
  Future<bool> addItemToService(PostModel11 model) async {
    try {
      final response =
          await _dio.post(_PostServicePaths.posts.name, data: model);

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (e) {
      _ShowDebug.showDioError(e, this);
    }
    return false;
  }

  @override
  Future<bool> putItemToService(PostModel11 model, int id) async {
    try {
      final response =
          await _dio.put('${_PostServicePaths.posts.name}/$id', data: model);

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (e) {
      _ShowDebug.showDioError(e, this);
    }
    return false;
  }
}

enum _PostServicePaths { posts, comments }
enum _PostServiceQueryParameters { postId }

class _ShowDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
    }
  }
}
