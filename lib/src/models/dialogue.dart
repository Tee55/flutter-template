import 'package:skylines/src/models/choice.dart';
import 'package:skylines/src/models/translation.dart';

class Dialogue {
  final String id;
  final String speaker;
  final Map<String, Translation>? translations;
  final Map<String, List<Choice>>? choices;

  Dialogue({
    required this.id,
    required this.speaker,
    this.translations,
    this.choices,
  });

  factory Dialogue.fromMap(Map<String, dynamic> map) {
    // Parse translations map if it exists
    Map<String, Translation>? translationsMap;
    if (map['translations'] != null) {
      translationsMap = {};
      (map['translations'] as Map<String, dynamic>).forEach((key, value) {
        translationsMap![key] = Translation.fromMap(value);
      });
    }

    // Parse choices map if it exists
    Map<String, List<Choice>>? choicesMap;
    if (map['choices'] != null) {
      choicesMap = {};
      (map['choices'] as Map<String, dynamic>).forEach((lang, choicesList) {
        choicesMap![lang] = (choicesList as List)
            .map((choice) => Choice.fromMap(choice))
            .toList();
      });
    }

    return Dialogue(
      id: map['id'] ?? '',
      speaker: map['speaker'] ?? '',
      translations: translationsMap,
      choices: choicesMap,
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = {
      'id': id,
      'speaker': speaker,
    };

    if (translations != null) {
      data['translations'] = {};
      translations!.forEach((key, value) {
        data['translations'][key] = value.toMap();
      });
    }

    if (choices != null) {
      data['choices'] = {};
      choices!.forEach((key, value) {
        data['choices'][key] = value.map((choice) => choice.toMap()).toList();
      });
    }

    return data;
  }

  // Helper method to get translation for a specific language
  Translation? getTranslation(String language) {
    return translations?[language];
  }

  // Helper method to get choices for a specific language
  List<Choice>? getChoices(String language) {
    return choices?[language];
  }
}
