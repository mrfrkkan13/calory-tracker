class UserModel {
  String? id;
  String? name;
  String? email;
  String? password;
  String? height;
  String? weight;
  String? age;

  UserModel({this.name, required this.email, required this.password, required this.height, required this.weight, required this.age, this.id});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['localId'],
        name: json['name'],
        email: json['email'],
        password: json['password'],
        height: json['height'],
        weight: json['weight'],
        age: json['age'],
        );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['localId'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['age'] = this.age;
    return data;
  }
}
