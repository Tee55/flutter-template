import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:skylines/src/models/conversation.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> _getCollection(String collection) {
    return _firestore.collection(collection);
  }

  Future<List<Conversation>> getConversations() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snapshot =
          await _getCollection('conversations').get();

      return snapshot.docs
          .map((doc) => Conversation.fromFirestore(doc))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch conversations: $e');
    }
  }
}
