import 'dart:async';

import 'package:listar_flutter/models/model.dart';
import 'package:listar_flutter/utils/utils.dart';

class Api {
  ///Get Home
  static Future<dynamic> getHome() async {
    await Future.delayed(Duration(seconds: 1));
    final result = await UtilAsset.loadJson("assets/data/home.json");
    return ResultApiModel.fromJson(result);
  }

  ///Get Location List
  static Future<dynamic> getLocationList() async {
    await Future.delayed(Duration(seconds: 1));
    final result = await UtilAsset.loadJson("assets/data/location.json");
    return ResultApiModel.fromJson(result);
  }

  ///Singleton factory
  static final Api _instance = Api._internal();

  factory Api() {
    return _instance;
  }

  Api._internal();
}
