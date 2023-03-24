
import 'package:calori_app/models/usermodel_realtime.dart';
import 'package:calori_app/view_models/services/services.dart';
import 'package:flutter/material.dart';

import '../../models/usermodel.dart';

class UserProvider with ChangeNotifier{
  UserModel _userModel = UserModel(email: "email", password: "password");
  UserModelRT _userModelRt = UserModelRT(name: "name" , email: "email", height: "height", weight: "weight", age: "age");

  UserModel get getUser => _userModel;
  UserModelRT get getUserRt => _userModelRt;

  var services = Services();
  static bool statusCheck = false;

  void setUser(UserModel user){
    _userModel = user;
    notifyListeners();
  }

  void setUserRt(UserModelRT userrt){
    _userModelRt = userrt;
    notifyListeners();
  }



  Future<void> postUser(String email, password) async{
    UserModel? u =await services.postUser(email, password);
    setUser(u!);
    statusCheck = true;

  }

  Future<void> postUserRT(UserModelRT usermodelrt) async {
        if(statusCheck == true)
          {
            UserModelRT? uRT = await services.postUserInfo(usermodelrt);
            setUserRt(uRT!);
          }
  }




  Future<void> login(UserModel userModel) async {
      final token = await services.signIn(userModel);
      notifyListeners();
  }





}