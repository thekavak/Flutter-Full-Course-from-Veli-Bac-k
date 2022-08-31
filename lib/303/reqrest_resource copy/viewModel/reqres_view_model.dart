import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:veli_hoca/202/cache/shared_learn.dart';
import '../model/resourceModel.dart';
import '../service/resource_service.dart';
import '../view/reqres_view.dart';
import 'package:veli_hoca/product/service/project_network.dart';

abstract class ReqresViewModal extends LoadingStateFul<ReqresView>
    with ProjectDioMixin {
  late final IReqresService reqresService;

  List<Data>? resources = [];
  @override
  void initState() {
    super.initState();
    //ProjectDioMixin den geldi bu service
    reqresService = ReqresService(service);
    fetch();
  }

  fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
