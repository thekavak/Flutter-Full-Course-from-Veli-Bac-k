import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:veli_hoca/202/services/post_model.dart';
import 'package:veli_hoca/202/services/post_service.dart';

class ServiceLearn extends StatefulWidget {
  ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel11>? _items;
  late final Dio _networkManager;

  bool isLoading = false;

  late final PostService _postService;

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

  Future<void> fecthPostItemsAdvance() async {
    _changeLoading();
    _items = await _postService.fecthPostItemsAdvance();
    _changeLoading();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _networkManager =
        Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
    fecthPostItemsAdvance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading ? CircularProgressIndicator.adaptive() : Container()
        ],
      ),
      body: _items == null
          ? ListView.builder(
              itemCount: _items?.length ?? 0,
              itemBuilder: ((context, index) {
                return postCard(
                  model: _items?[index],
                );
              }))
          : Container(),
    );
  }
}

class postCard extends StatelessWidget {
  const postCard({
    Key? key,
    required PostModel11? model,
  })  : _model = model,
        super(key: key);

  final PostModel11? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
