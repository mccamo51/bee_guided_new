class FavoriteModel {
  List<Data>? data;

  FavoriteModel({this.data});

  FavoriteModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? book;
  String? verse;
  String? verseDetails;
  String? bookVersion;

  Data({this.book, this.verse, this.verseDetails, this.bookVersion});

  Data.fromJson(Map<String, dynamic> json) {
    book = json['book'];
    verse = json['verse'];
    verseDetails = json['verse_details'];
    bookVersion = json['bookVersion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['book'] = this.book;
    data['verse'] = this.verse;
    data['verse_details'] = this.verseDetails;
    data['bookVersion'] = this.bookVersion;
    return data;
  }
}
