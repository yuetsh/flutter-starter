import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/home/index.dart';
import 'package:flutter_starter/widgets/settings/index.dart';
import 'package:flutter_starter/widgets/webview/index.dart';

Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        HomeIndex());

Handler settingsHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        SettingsIndex());

Handler activityHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        WebViewIndex(
          url: 'https://m.xianghuanji.com/activity/ngcache/1901/luckyrotary}',
          title: '哈哈',
        ));
