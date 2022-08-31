import '../../303/reqrest_resource/model/resourceModel.dart';

class ResourceContext {
  ResourceModel? model;

  saveModel(ResourceModel? model) {
    this.model = model;
  }
}
