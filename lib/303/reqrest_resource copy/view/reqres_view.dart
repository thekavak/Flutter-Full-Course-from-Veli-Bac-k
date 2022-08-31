import 'package:flutter/material.dart';
import 'package:veli_hoca/product/extension/string_extension.dart';

import '../viewModel/reqres_view_model.dart';

class ReqresView extends StatefulWidget {
  ReqresView({Key? key}) : super(key: key);

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

class _ReqresViewState extends ReqresViewModal {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: isLoading ? const CircularProgressIndicator() : null,
        ),
        body: ListView.builder(
          itemCount: resources?.length ?? 0,
          itemBuilder: (context, index) {
            return Card(
                color: Color(resources![index].color?.colorValue ?? 0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(resources?[index].name ?? ''),
                ));
          },
        ));
  }
}
