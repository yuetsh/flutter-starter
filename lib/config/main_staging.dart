import 'config.dart';

void main() => _Staging();

class _Staging extends Config {
  EnvType envType = EnvType.STAGING;
  final String baseUrl = 'https://api.com';
}
