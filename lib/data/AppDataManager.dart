import 'package:flutter_mvp_app/data/network/ApiHelper.dart';

AppDataManager appDataManager = new AppDataManager();

class AppDataManager {
  static final AppDataManager _appDataManager = new AppDataManager._internal();
  final ApiHelper apiHelper = new ApiHelper();

  // SharedPrefsHelper sharedPrefsHelper=new SharedPrefsHelper();

  factory AppDataManager() {
    return _appDataManager;
  }

  AppDataManager._internal();
}
