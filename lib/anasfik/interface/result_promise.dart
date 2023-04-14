

import 'package:openci/anasfik/core/exceptions/api_key_not_set.dart';
import 'package:openci/anasfik/instance/chat/chat.dart';
import 'package:openci/anasfik/instance/completion/completion.dart';
import 'package:openci/anasfik/instance/openai.dart';

OpenAIChat getChat(){
  OpenAI instance;
  try{
     instance = OpenAI.instance;
  }catch(e){
    throw MissingApiKeyException("""
      You must set the api key before accessing the instance of this class.
      Example:
      OpenAI.apiKey = "Your API Key";
      """);
  }
  return instance.chat;
}
OpenAICompletion getCompletion(){
  OpenAI instance;
  try{
    instance = OpenAI.instance;
  }catch(e){
    throw MissingApiKeyException("""
      You must set the api key before accessing the instance of this class.
      Example:
      OpenAI.apiKey = "Your API Key";
      """);
  }
  return instance.completion;
}