import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:veli_hoca/product/global/resource_context.dart';

import '../model/resourceModel.dart';
import '../service/resource_service.dart';

class ReqResProvider extends ChangeNotifier {
  final IReqresService reqresService;

  List<Data>? resources = [];
  bool isLoading = false;

  changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  ReqResProvider(this.reqresService) {
    fetch();
  }

  fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }

  saveToLocale(ResourceContext resourceContext) {
    resourceContext.saveModel(ResourceModel(data: resources));
  }
}
