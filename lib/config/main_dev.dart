import 'config.dart';

void main() => _Development();

class _Development extends Config {
  EnvType envType = EnvType.DEVELOPMENT;
  final String baseUrl = 'https://api.dev.com';
}
