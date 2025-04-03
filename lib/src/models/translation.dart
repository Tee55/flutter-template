class Translation {
  final String text;
  final String? audio;

  Translation({
    required this.text,
    this.audio,
  });

  factory Translation.fromMap(Map<String, dynamic> map) {
    return Translation(
      text: map['text'] ?? '',
      audio: map['audio'],
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = {
      'text': text,
    };
    if (audio != null) {
      data['audio'] = audio;
    }
    return data;
  }
}
