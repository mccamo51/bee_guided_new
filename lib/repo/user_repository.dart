import 'dart:convert';

import 'package:bee_guided/model/response/response.dart';
import 'package:bee_guided/model/response/user_info_model.dart';
import 'package:bee_guided/services/services.dart';
import 'package:bee_guided/util/constants.dart';
import 'package:flutter/rendering.dart';

class UserRepo {
  final ApiService apiClient = ApiService();
  Future<UserModel?> userLogin(String email, String password) async {
    UserModel? _userInfoModel = UserModel();
    await apiClient.postData("login", {
      "email": email,
      "password": password,
    }).then((value) {
      _userInfoModel = UserModel.fromJson(value.response);
    }).catchError((c) {
      debugPrint("===> BASEURL" + appBaseUrl + c.toString());
    });
    return _userInfoModel;
  }
}
