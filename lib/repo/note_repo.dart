import 'package:bee_guided/model/response/note_model.dart';
import 'package:bee_guided/services/services.dart';
import 'package:bee_guided/util/constants.dart';

class NoteRepo {
  final ApiService apiClient = ApiService();

  Future<Object> addNote({String? title, String? note, String? userId}) async {
    late Object newResponse;
    await apiClient.postData(noteUrl + "/add", {
      'note': note,
      'title': title,
      'userid': userId,
    }).then(
      (value) => {
        // print(value.response),
        newResponse = value,
      },
    );

    return newResponse;
  }

  Future<NoteModel> getAllNote(String userID) async {
    late NoteModel noteModel;
    await apiClient.getData("$noteUrl/$userID").then((value) => {
          if (value != null) {noteModel = NoteModel.fromJson(value.response)}
        });

    return noteModel;
  }

  Future<Object> updateNote(
      {String? title, String? note, String? noteId}) async {
    late Object newResponse;
    await apiClient.postData(noteUrl + "add", {
      'note': note,
      'title': title,
      'note_code': noteId,
    }).then((value) => {newResponse = value});

    return newResponse;
  }
}
