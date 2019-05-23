import 'package:flutter_starter/main.dart';

enum EnvType { DEVELOPMENT, TEST, STAGING, PRODUCTION }

abstract class Config {
  static Config value;

  EnvType envType = EnvType.DEVELOPMENT;
  String baseUrl;

  Config() {
    value = this;
    _init();
  }

  void _init() {
    mainDelegate();
  }
}
