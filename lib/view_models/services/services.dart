import 'dart:convert';

import 'package:calori_app/models/usermodel.dart';
import 'package:http/http.dart' as http;


import '../../models/user_login_model.dart';
import '../../models/usermodel_realtime.dart';


const webApiKey = "AIzaSyA2QooUAapVPnn_8XTXvmHXANSZtedteOo";

const String _baseUrl =
    "https://caloriapp-e1590-default-rtdb.europe-west1.firebasedatabase.app";

class Services {


  Uri getUrl(String endpoint) => Uri.parse("$_baseUrl/$endpoint.json");


  Future<UserModel?> postUserInfo(UserModel user) async {
    http.Response response = await http.put(
        getUrl("users/${user.id}"),
        body: json.encode({
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


      UserModel rtUser = UserModel.fromJson(data);
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
            "password": password,
          "returnSecureToken":true
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode >= 200 && response.statusCode < 300)
    {
      var data = json.decode(response.body);
      UserModel authUser = UserModel.fromJson(data);
      return authUser;
    }
  }

  Future<void> signIn(UserLoginModel user) async {
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
      search("users");
    } else {
      print("Giriş Başarısız!!!");
    }
  }

  final baseUrl = 'https://caloriapp-e1590.firebaseio.com/';
  final apiKey = 'AIzaSyA2QooUAapVPnn_8XTXvmHXANSZtedteOo';



  Future<List<Map<String, dynamic>>> search(String query) async {
    final response = await http.get(
      Uri.parse('$baseUrl/PATH/TO/NODE.json?orderBy="KEY"&startAt="$query"&endAt="${query}\uf8ff"&auth=$apiKey'),
    );
    print(response.body);
    final responseData = json.decode(response.body) as Map<String, dynamic>;
    final List<Map<String, dynamic>> results = [];
    responseData.forEach((key, value) {
      results.add({...value, 'id': key});
    });
    return results;
  }


}
