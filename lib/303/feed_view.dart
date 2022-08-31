import 'package:flutter/material.dart';
import 'package:veli_hoca/202/model_learn.dart';
import 'package:veli_hoca/202/services/post_service.dart';

import '../202/services/post_model.dart';

class FeedView extends StatefulWidget {
  FeedView({Key? key}) : super(key: key);
  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView>
    with AutomaticKeepAliveClientMixin {
  final IPostService _postService = PostService();

  late Future<List<PostModel11>?> _itemsFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemsFuture = _postService.fecthPostItemsAdvance();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<PostModel11>?>(
        future: _itemsFuture,
        builder:
            (BuildContext context, AsyncSnapshot<List<PostModel11>?> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Placeholder();

            case ConnectionState.waiting:

            case ConnectionState.active:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(snapshot.data?[index].title ?? ''),
                      ),
                    );
                  },
                );
              } else {
                return const Placeholder();
              }
          }
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
