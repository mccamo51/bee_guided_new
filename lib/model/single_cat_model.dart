class SingleCateModel {
  List<Data>? data;

  SingleCateModel({this.data});

  SingleCateModel.fromJson(Map<String, dynamic> json) {
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
  String? book;
  String? verse;
  String? category;
  String? catCode;
  String? verseDetails;

  Data({this.book, this.verse, this.category, this.catCode, this.verseDetails});

  Data.fromJson(Map<String, dynamic> json) {
    book = json['book'];
    verse = json['verse'];
    category = json['category'];
    catCode = json['catCode'];
    verseDetails = json['verse_details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['book'] = book;
    data['verse'] = verse;
    data['category'] = category;
    data['catCode'] = catCode;
    data['verse_details'] = verseDetails;
    return data;
  }
}
