import 'config.dart';

void main() => _Production();

class _Production extends Config {
  EnvType envType = EnvType.PRODUCTION;
  final String baseUrl = 'https://api.com';
}
