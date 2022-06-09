
// import 'package:bee_guided/util/constants.dart';
// import 'package:flutter/foundation.dart';

// class CategoryRepo {
//   final ApiService apiClient = ApiService();
//   Future<CategoryModel> getCategory() async {
//     CategoryModel _category = CategoryModel();
//     await apiClient.getData(categoryUrl).then((value) {
//       _category = CategoryModel.fromJson(value.response);
//     }).onError((error, stackTrace) {
//       debugPrint("===> BASEURL" + stackTrace.toString() + error.toString());
//     });
//     return _category;
//   }
// }
