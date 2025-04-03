class Choice {
  final String id;
  final String text;
  final bool correctness;
  final int points;
  final String? feedback;
  final String nextDialogueId;

  Choice({
    required this.id,
    required this.text,
    required this.correctness,
    required this.points,
    this.feedback,
    required this.nextDialogueId,
  });

  factory Choice.fromMap(Map<String, dynamic> map) {
    return Choice(
      id: map['id'] ?? '',
      text: map['text'] ?? '',
      correctness: map['correctness'] ?? false,
      points: map['points'] ?? 0,
      feedback: map['feedback'],
      nextDialogueId: map['nextDialogueId'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = {
      'id': id,
      'text': text,
      'correctness': correctness,
      'points': points,
      'nextDialogueId': nextDialogueId,
    };
    if (feedback != null) {
      data['feedback'] = feedback;
    }
    return data;
  }
}
