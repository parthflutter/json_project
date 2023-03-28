import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Post_provider extends ChangeNotifier{

List<dynamic>postList=[];


Future<void> jsonPrasing()async {
  String jsonData = await rootBundle.loadString("assets/json/post.json");

  var json= jsonDecode(jsonData);
  postList=json;
  notifyListeners();
}
}