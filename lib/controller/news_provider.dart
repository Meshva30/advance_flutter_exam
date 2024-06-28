import 'dart:convert';

import 'package:advance_flutter_exam/model/news_model.dart';
import 'package:advance_flutter_exam/services/api_services.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  Datamodel? data;
  bool isloding = true;

  Future<void> fetchdata() async {
    isloding = true;
    notifyListeners();
    String? json = await apiservices().apicalling();
    if (json != null) {
      data = Datamodel.fromjson(jsonDecode(json));
    } else {}
    isloding = false;
    notifyListeners();
  }

  HomeProvider() {
    fetchdata();
  }
}
