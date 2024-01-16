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

  //  GOOGLE API Key
  @EnviedField(varName: 'GOOGLE_API_KEY', defaultValue: '', obfuscate: true)
  static final String googleApiKey = _Api.googleApiKey;
}
