import 'package:bee_guided/model/response/user_info_model.dart';
import 'package:bee_guided/repo/user_repository.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  final UserRepo _userRepo = UserRepo();
  late UserModel _userInfoModel;
  bool _isLoading = false;
  bool _isSuccess = false;

  UserModel get usermodel => _userInfoModel;
  bool get isLoading => _isLoading;
  bool get isSuccess => _isSuccess;

  //Setter
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setIsSuccess(bool success) {
    _isSuccess = success;
    notifyListeners();
  }

  void setUser(UserModel model) {
    _userInfoModel = model;
    notifyListeners();
  }

  Future<bool> login() async {
    setLoading(true);
    await _userRepo.userLogin('kwakye@gitplus.app', '12345678').then((value) {
      if (value != null) {
        setUser(value);
        setIsSuccess(true);
      }
      setLoading(false);
    });
    return _isSuccess;
  }
}
