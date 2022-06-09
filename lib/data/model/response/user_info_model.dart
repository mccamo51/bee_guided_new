class UserModel {
  bool? ok;
  String? msg;
  Data? data;

  UserModel({ok, msg, data});

  UserModel.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ok'] = ok;
    data['msg'] = msg;
    data['data'] = this.data!.toJson();
    return data;
  }
}

class Data {
  String? id;
  String? userid;
  String? username;
  String? usertype;
  String? email;
  String? deleted;
  String? createdate;
  String? createuser;
  String? modifydate;
  String? modifyuser;

  Data(
      {id,
      userid,
      username,
      usertype,
      email,
      deleted,
      createdate,
      createuser,
      modifydate,
      modifyuser});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    username = json['username'];
    usertype = json['usertype'];
    email = json['email'];
    deleted = json['deleted'];
    createdate = json['createdate'];
    createuser = json['createuser'];
    modifydate = json['modifydate'];
    modifyuser = json['modifyuser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userid'] = userid;
    data['username'] = username;
    data['usertype'] = usertype;
    data['email'] = email;
    data['deleted'] = deleted;
    data['createdate'] = createdate;
    data['createuser'] = createuser;
    data['modifydate'] = modifydate;
    data['modifyuser'] = modifyuser;
    return data;
  }
}
