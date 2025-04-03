import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:skylines/src/models/scenario.dart';

class Conversation {
  final String conversationId;
  final String location;
  final List<String> availableLanguages;
  final String defaultLanguage;
  final List<Scenario> scenarios;

  Conversation({
    required this.conversationId,
    required this.location,
    required this.availableLanguages,
    required this.defaultLanguage,
    required this.scenarios,
  });

  // Convert Firestore document to Conversation
  factory Conversation.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Conversation(
      conversationId: doc.id,
      location: data['location'] ?? '',
      availableLanguages: List<String>.from(data['availableLanguages'] ?? []),
      defaultLanguage: data['defaultLanguage'] ?? 'en',
      scenarios: (data['scenarios'] as List? ?? [])
          .map((scenarioData) => Scenario.fromMap(scenarioData))
          .toList(),
    );
  }

  // Convert Conversation to a map for Firestore
  Map<String, dynamic> toFirestore() {
    return {
      'location': location,
      'availableLanguages': availableLanguages,
      'defaultLanguage': defaultLanguage,
      'scenarios': scenarios.map((scenario) => scenario.toMap()).toList(),
    };
  }

  // Helper method to get a specific scenario by ID
  Scenario? getScenarioById(String id) {
    try {
      return scenarios.firstWhere((scenario) => scenario.scenarioId == id);
    } catch (e) {
      return null;
    }
  }
}
