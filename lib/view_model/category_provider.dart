import 'package:bee_guided/model/response/category_model.dart';
import 'package:bee_guided/model/single_cat_model.dart';
import 'package:bee_guided/repo/category_repo.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  final CategoryRepo _categoryRepo = CategoryRepo();
  bool _isLoading = false;
  int _itemCount = 0;
  CategoryModel _categoryModel = CategoryModel();
  SingleCateModel _singleCateModel = SingleCateModel();

  bool get isLoading => _isLoading;
  int get itemCount => _itemCount;
  CategoryModel get category => _categoryModel;
  SingleCateModel get singleCat => _singleCateModel;
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  CategoryProvider() {
    gatAllCategory();
  }

  void setCategory(CategoryModel model) {
    _categoryModel = model;
    notifyListeners();
  }

  void setSingleCategory(SingleCateModel model) {
    _singleCateModel = model;
    notifyListeners();
  }

  void getItemCount(int itemes) {
    _itemCount = itemes;
    notifyListeners();
  }

  Future<void> gatAllCategory() async {
    _categoryRepo.getCategory().then((value) {
      setLoading(true);
      if (value != null) {
        setCategory(value);
        getItemCount(value.data!.length);
      }
      setLoading(false);
    });
  }

  void searchCategory(String categoryID) {
    _singleCateModel.data!.clear();
    setLoading(true);

    _categoryRepo.getSingleCat(categoryID).then((value) {
      if (value != null) {
        // print(value.data);
        setSingleCategory(value);
        setLoading(false);
      }
    });
  }
}
