import 'dart:convert';

import 'package:calori_app/models/usermodel.dart';
import 'package:http/http.dart' as http;

import '../../models/usermodel_realtime.dart';


const webApiKey = "AIzaSyA2QooUAapVPnn_8XTXvmHXANSZtedteOo";

const String _baseUrl =
    "https://caloriapp-e1590-default-rtdb.europe-west1.firebasedatabase.app/";

class Services {


  Uri getUrl(String endpoint) => Uri.parse("$_baseUrl/$endpoint.json");


  Future<UserModelRT?> postUserInfo(UserModelRT user) async {
    http.Response response = await http.put(
        getUrl("user"),
        body: json.encode({
            "id": user.id,
            "name": user.name,
             "email" : user.email,
            "weight": user.weight,
            "height" : user.height,
            "age" : user.age

        }

        ),
        headers: {"Content-Type": "application/json"});


    if (response.statusCode >= 200 && response.statusCode < 300) {
      var data = json.decode(response.body);

      data['username'] = user.name;
      data["email"] = user.email;
      data["age"] = user.age;
      data["weight"] = user.weight;
      data["height"] = user.height;

      UserModelRT rtUser = UserModelRT.fromJson(data);
      return rtUser;
    }
    else
    {
      return null;
    }
  }

  Future<UserModel?> postUser(String email, password) async {
    http.Response response = await http.post(
        //getUrl("users"),
        Uri.parse(
            "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$webApiKey"),
        body: json.encode({
            "email": email,
            "password": password
        }),
        headers: {"Content-Type": "application/json"});

    if (response.statusCode >= 200 && response.statusCode < 300)
    {
      var data = json.decode(response.body);
      UserModel authUser = UserModel.fromJson(data);
      return authUser;
    }
  }

  Future<void> signIn(UserModel user) async {
    final url = Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$webApiKey');
    final response = await http.post(
      url,
      body: json.encode({
        'email': user.email,
        'password': user.password,
        'returnSecureToken': true,
      }),
    );

    if (response.statusCode == 200) {
      print("Giriş Yapıldı!!!");
    } else {
      print("Giriş Başarısız!!!");
    }
  }


}
