import 'dart:convert';

import 'package:calori_app/models/usermodel.dart';
import 'package:http/http.dart' as http;

const webApiKey = "AIzaSyA2QooUAapVPnn_8XTXvmHXANSZtedteOo";

const String _baseUrl =
    "https://caloriapp-e1590-default-rtdb.europe-west1.firebasedatabase.app/";

class Services {
  Uri getUrl(String endpoint) => Uri.parse("$_baseUrl/$endpoint.json");

  Future<UserModel?> postUserInfo(UserModel user) async {
    http.Response response = await http.post(
        getUrl("users.json?key=$webApiKey"),
        body: json.encode(user.toJson()),
        headers: {"Content-Type": "application/json"});

    print(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      var data = json.decode(response.body);
      user.id = data["idToken"];
      user.name = data["username"];
      return user;
    } else {
      return null;
    }
  }

  Future<void> postUser(String email, password) async {

    http.Response response = await http.post(
        //getUrl("users"),
        Uri.parse(
            "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$webApiKey"),
        body: json.encode({
            "email": email,
            "password": password
        }),
        headers: {"Content-Type": "application/json"});
  print(response.body);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      var data = json.decode(response.body);
      
      // data["email"] = user.email;
      //data["password"] = user.password;
      // data["returnSecureToken"] = true;
      // postUserInfo(user);
      // return user;
    } 
    // else {
      // return null;
    // }
  }
}
