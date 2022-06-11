import 'package:bee_guided/model/response/favorite_model.dart';
import 'package:bee_guided/repo/my_favorite_repo.dart';
import 'package:flutter/material.dart';

class FavoritesProvider with ChangeNotifier {
  final FavoriteRepo _favoriteRepo = FavoriteRepo();
  bool _isLoading = false;
  int _itemCount = 0;

  FavoriteModel _favoriteModel = FavoriteModel();

  FavoritesProvider() {
    gatAllFavorite();
  }

  //getter
  bool get isLoading => _isLoading;
  FavoriteModel get favorite => _favoriteModel;
  int get itemCount => _itemCount;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void getItemCount(int itemes) {
    _itemCount = itemes;
    notifyListeners();
  }

  void setFavorites(FavoriteModel model) {
    _favoriteModel = model;
    notifyListeners();
  }

  Future<void> gatAllFavorite() async {
    _favoriteRepo.getFavorite().then((value) {
      // print(value.data![0].note);
      setLoading(true);
      if (value != null) {
        setFavorites(value);
        getItemCount(value.data!.length);
        setLoading(false);
      }
    });
  }
}
