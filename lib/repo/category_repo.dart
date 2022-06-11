import 'package:bee_guided/model/response/category_model.dart';
import 'package:bee_guided/model/single_cat_model.dart';
import 'package:bee_guided/services/services.dart';
import 'package:bee_guided/util/constants.dart';
import 'package:flutter/foundation.dart';

class CategoryRepo {
  final ApiService apiClient = ApiService();
  Future<CategoryModel> getCategory() async {
    CategoryModel _category = CategoryModel();
    await apiClient.getData(categoryUrl).then((value) {
      _category = CategoryModel.fromJson(value.response);
    }).onError((error, stackTrace) {
      debugPrint("===> BASEURL" + stackTrace.toString() + error.toString());
    });
    return _category;
  }

  Future<SingleCateModel> getSingleCat(String cateID) async {
    SingleCateModel _singleCategory = SingleCateModel();
    await apiClient.getData(singleQuoteUrl + "/$cateID").then((value) {
      _singleCategory = SingleCateModel.fromJson(value.response);
    }).onError((error, stackTrace) {
      debugPrint("===> BASEURL" + stackTrace.toString() + error.toString());
    });
    return _singleCategory;
  }
}
