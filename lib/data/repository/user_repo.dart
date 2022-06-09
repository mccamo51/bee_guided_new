import 'package:bee_guided/data/model/response/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:image_picker/image_picker.dart';

import '../../util/app_constants.dart';
import '../api/api_client.dart';

class UserRepo {
  final ApiClient apiClient;
  UserRepo({required this.apiClient});

  Future<Response> getUserInfo() async {
    return await apiClient.getData(AppConstants.CUSTOMER_INFO_URI);
  }

  // Future<Response> updateProfile(UserModel userInfoModel, String token) async {
  //   Map<String, String> _body = Map();
  //   _body.addAll(<String, String>{
  //     'f_name': userInfoModel.data!.username, 'l_name': userInfoModel.lName, 'email': userInfoModel.email
  //   });
  //   return await apiClient.postMultipartData(AppConstants.UPDATE_PROFILE_URI, _body, [MultipartBody('image', data)]);
  // }

  Future<Response> changePassword(UserModel userInfoModel) async {
    return await apiClient.postData(AppConstants.UPDATE_PROFILE_URI, {
      'f_name': userInfoModel.data!.usertype,
      'l_name': userInfoModel.data!.username,
      'email': userInfoModel.data!.email,
      'password': userInfoModel.data!
    });
  }
}
