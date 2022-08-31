import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_hoca/101/image_learn.dart';
import 'package:veli_hoca/303/reqrest_resource/service/resource_service.dart';
import 'package:veli_hoca/303/reqrest_resource/viewModel/reg_res_provider.dart';
import 'package:veli_hoca/product/extension/string_extension.dart';
import 'package:veli_hoca/product/global/resource_context.dart';
import 'package:veli_hoca/product/global/theme_notifier.dart';
import 'package:veli_hoca/product/service/project_network.dart';

import '../viewModel/reqres_view_model.dart';

class ReqresView extends StatefulWidget {
  ReqresView({Key? key}) : super(key: key);

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

class _ReqresViewState extends State<ReqresView> with ProjectDioMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqResProvider>(
      create: (context) => ReqResProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<ThemeNotifier>().changeTheme();
              },
            ),
            appBar: AppBar(
              title: context.watch<ReqResProvider>().isLoading
                  ? const CircularProgressIndicator()
                  : null,
              actions: [
                IconButton(
                    onPressed: () {
                      context
                          .read<ReqResProvider>()
                          .saveToLocale(context.read<ResourceContext>());

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) {
                          return ImageLearn();
                        },
                      ));
                    },
                    icon: Icon(Icons.save_alt_outlined))
              ],
            ),
            body: Column(
              children: [
                Selector<ReqResProvider, bool>(
                  builder: (context, value, child) {
                    return value ? const Placeholder() : const Text('sadas');
                  },
                  selector: (p0, p1) {
                    return p1.isLoading;
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount:
                        context.watch<ReqResProvider>().resources?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Card(
                          color: Color(context
                                  .watch<ReqResProvider>()
                                  .resources?[index]
                                  .color
                                  ?.colorValue ??
                              0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(context
                                    .watch<ReqResProvider>()
                                    .resources?[index]
                                    .name ??
                                ''),
                          ));
                    },
                  ),
                ),
              ],
            ));
      },
    );
  }
}
