import 'dart:io';

import '../../models/audio/audio.dart';
import '../../models/image/enum.dart';



abstract class CreateInterface {
  Future<OpenAIAudioModel> createTranscription({
    required File file,
    required String model,
    String? prompt,
    OpenAIAudioResponseFormat? responseFormat,
    double? temperature,
    String? language,
  });

  Future<OpenAIAudioModel> createTranslation({
    required File file,
    required String model,
    String? prompt,
    OpenAIAudioResponseFormat? responseFormat,
    double? temperature,
  });
}
