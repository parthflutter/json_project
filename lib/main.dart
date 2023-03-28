import 'package:flutter/material.dart';
import 'package:json_project/screen/provider/json_provider.dart';
import 'package:json_project/screen/view/json_screen.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Post_provider(),)
  ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => json(),
      },
    ),
  ),
  );
}