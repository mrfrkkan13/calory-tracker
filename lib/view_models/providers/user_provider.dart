
import 'package:calori_app/models/usermodel_realtime.dart';
import 'package:calori_app/view_models/services/services.dart';
import 'package:flutter/material.dart';

import '../../models/user_login_model.dart';
import '../../models/usermodel.dart';

class UserProvider with ChangeNotifier{
  UserModel _userModel = UserModel(email: "email", password: "password", weight: "weight", height: "height", age: "age", id: "id", name: "name");
  // UserModelRT _userModelRt = UserModelRT(name: "name" , email: "email", height: "height", weight: "weight", age: "age");

  UserModel get getUser => _userModel;
  // UserModelRT get getUserRt => _userModelRt;

  var services = Services();
  static bool statusCheck = false;

  void setUser(UserModel user){
    _userModel = user;
    notifyListeners();
  }

 /* void setUserRt(UserModel userrt){
    _userModel = userrt;
    notifyListeners();
  }*/



  Future<void> postUser(String email, password, age, weight, height) async{
    _userModel = (await services.postUser(email, password))!;
     setUser(_userModel);


    _userModel.age = age;
    _userModel.weight = weight;
    _userModel.height = height;
     statusCheck = true;
     services.postUserInfo(_userModel);
     notifyListeners();
  }

  /*Future<void> postUserRT(UserModel user) async {
        if(statusCheck == true)
          {
            UserModel? uRT = await services.postUserInfo(user);
            setUser(uRT!);
          }
  }*/


  Future<void> login(UserLoginModel userLoginModel) async {
      final token = await services.signIn(userLoginModel);
      notifyListeners();
  }





}