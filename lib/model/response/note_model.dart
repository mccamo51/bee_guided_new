class NoteModel {
  List<Data>? data;

  NoteModel({this.data});

  NoteModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? noteCode;
  String? note;
  String? title;
  String? createdDate;
  String? createdTime;

  Data(
      {this.noteCode,
      this.note,
      this.title,
      this.createdDate,
      this.createdTime});

  Data.fromJson(Map<String, dynamic> json) {
    noteCode = json['noteCode'];
    note = json['note'];
    title = json['title'];
    createdDate = json['createdDate'];
    createdTime = json['createdTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['noteCode'] = noteCode;
    data['note'] = note;
    data['title'] = title;
    data['createdDate'] = createdDate;
    data['createdTime'] = createdTime;
    return data;
  }
}
