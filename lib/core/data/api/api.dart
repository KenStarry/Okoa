import "package:envied/envied.dart";

part 'api.g.dart';

//  dart run build_runner build -d
@Envied(path: 'api.env')
abstract class Api {
  //  Url
  @EnviedField(varName: 'SUPABASE_URL', defaultValue: '', obfuscate: true)
  static final String url = _Api.url;

  //  Anon Key
  @EnviedField(varName: 'SUPABASE_ANON_KEY', defaultValue: '', obfuscate: true)
  static final String anonKey = _Api.anonKey;
}
