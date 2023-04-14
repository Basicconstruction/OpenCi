import 'package:openci/anasfik/core/builder/headers.dart';
import 'package:openci/anasfik/core/constants/config.dart';
import 'package:openci/anasfik/instance/openai.dart';

/// 该类包装了,该库的主要参数的设置，用于与外界交互
///
class Manager {
  static set sk_key(String key){
    OpenAI.apiKey = key;
  }
  static set proxy(String interface){
    OpenAI.baseUrl = interface;
  }
  static String get proxy{
    return OpenAIConfig.baseUrl;
  }
}