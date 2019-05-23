import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/home/index.dart';
import 'package:flutter_starter/widgets/settings/index.dart';

Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        HomeIndex());

Handler settingsHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        SettingsIndex());
