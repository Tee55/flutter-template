import 'package:skylines/src/models/dialogue.dart';

class Scenario {
  final String scenarioId;
  final String background;
  final List<Dialogue> dialogues;

  Scenario({
    required this.scenarioId,
    required this.background,
    required this.dialogues,
  });

  factory Scenario.fromMap(Map<String, dynamic> map) {
    return Scenario(
      scenarioId: map['scenarioId'] ?? '',
      background: map['background'] ?? '',
      dialogues: (map['dialogues'] as List? ?? [])
          .map((dialogueData) => Dialogue.fromMap(dialogueData))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'scenarioId': scenarioId,
      'background': background,
      'dialogues': dialogues.map((dialogue) => dialogue.toMap()).toList(),
    };
  }

  // Helper method to get a dialogue by ID
  Dialogue? getDialogueById(String id) {
    try {
      return dialogues.firstWhere((dialogue) => dialogue.id == id);
    } catch (e) {
      return null;
    }
  }
}
