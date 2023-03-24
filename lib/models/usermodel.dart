class UserModel {
  String? id;
  String? name;
  String? email;
  //String? password;

  UserModel({this.id, this.name, required this.email});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        //password: json['password']
        );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    //data['password'] = this.password;
    return data;
  }
}
