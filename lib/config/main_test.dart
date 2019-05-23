import 'config.dart';

void main() => _Test();

class _Test extends Config {
  EnvType envType = EnvType.TEST;
  final String baseUrl = 'https://api.test.com';
}
