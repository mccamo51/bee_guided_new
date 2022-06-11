import 'package:bee_guided/model/response/note_model.dart';
import 'package:bee_guided/repo/note_repo.dart';
import 'package:flutter/material.dart';

class NoteProvider with ChangeNotifier {
  final NoteRepo _noteRepo = NoteRepo();
  NoteModel _noteModel = NoteModel();
  bool _isLoading = false;
  bool _isSuccess = false;

  //Getter
  bool get isLoading => _isLoading;
  bool get isSuccess => _isSuccess;
  NoteModel get noteModel => _noteModel;

  NoteProvider() {
    getnotes();
  }

  //Setter
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setIsSuccess(bool success) {
    _isSuccess = success;
    notifyListeners();
  }

  void setNote(NoteModel model) {
    _noteModel = model;
    notifyListeners();
  }

  Future<bool> addNewNote(String title, String note) async {
    setLoading(true);
    await _noteRepo
        .addNote(note: note, title: title, userId: "732577394d")
        .then((value) {
      // print(value);
      setIsSuccess(true);
      setLoading(false);
      // getnotes();
    });
    return _isSuccess;
  }

  void getnotes() {
    setLoading(true);
    _noteRepo.getAllNote("732577394d").then((value) {
      setNote(value);
      setLoading(false);
    });
  }
}
