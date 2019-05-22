import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/category_screen.dart';
import 'package:flutter_starter/screens/home_screen.dart';

Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        HomeScreen());

Handler categoryHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        CategoryScreen());
