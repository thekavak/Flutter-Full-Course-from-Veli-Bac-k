import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:veli_hoca/202/cache/shared_learn.dart';
import 'package:veli_hoca/303/reqrest_resource/model/resourceModel.dart';
import 'package:veli_hoca/303/reqrest_resource/service/resource_service.dart';
import 'package:veli_hoca/303/reqrest_resource/view/reqres_view.dart';
import 'package:veli_hoca/product/service/project_network.dart';
import 'package:veli_hoca/product/service/project_network_manager.dart';

abstract class ReqresViewModal extends LoadingStateFul<ReqresView>
    with ProjectDioMixin {
  late final IReqresService reqresService;

  List<Data>? resources = [];
  @override
  void initState() {
    super.initState();
    //ProjectDioMixin den geldi bu service
    //reqresService = ReqresService(service);
    reqresService = ReqresService(ProjectNetworkManager.instance.service);
    ProjectNetworkManager.instance.addBaseHeadertoToken('token');
    fetch();
  }

  fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
