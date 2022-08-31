import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:veli_hoca/202/model_learn.dart';
import 'package:veli_hoca/202/services/post_model.dart';

import 'post_service.dart';

class ServiceLearnPost extends StatefulWidget {
  ServiceLearnPost({Key? key}) : super(key: key);

  @override
  State<ServiceLearnPost> createState() => _ServiceLearnPostState();
}

class _ServiceLearnPostState extends State<ServiceLearnPost> {
  List<PostModel11>? _items;

  String? name;

  late final IPostService _postService;
  bool isLoading = false;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> fecthPostItems() async {
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        _items = _datas.map((e) => PostModel11.fromJson(e)).toList();
        setState(() {
          _changeLoading();
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            isLoading ? const CircularProgressIndicator.adaptive() : Container()
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _titleController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _bodyController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(labelText: 'Body'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _idController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(labelText: 'User Id'),
              ),
            ),
            TextButton(
                onPressed: isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _idController.text.isNotEmpty) {
                          final model = PostModel11(
                              body: _bodyController.text,
                              title: _titleController.text,
                              userId: int.tryParse(_idController.text));

                          _postService.addItemToService(model);
                        }
                      },
                child: const Text('Send'))
          ],
        ));
  }
}
