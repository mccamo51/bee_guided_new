import 'package:bee_guided/model/response/favorite_model.dart';
import 'package:bee_guided/services/services.dart';
import 'package:bee_guided/util/constants.dart';
import 'package:flutter/foundation.dart';

class FavoriteRepo {
  final ApiService apiClient = ApiService();
  Future<FavoriteModel> getFavorite() async {
    FavoriteModel _favorite = FavoriteModel();
    await apiClient.getData(favoriteUrl + "/732577394d").then((value) {
      _favorite = FavoriteModel.fromJson(value.response);
    }).onError((error, stackTrace) {
      debugPrint("===> BASEURL" + stackTrace.toString() + error.toString());
    });
    return _favorite;
  }
}
