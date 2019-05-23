import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/home.screen.dart';
import 'package:flutter_starter/screens/settings.screen.dart';

Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        HomeScreen());

Handler settingsHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        SettingsScreen());
