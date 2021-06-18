import 'package:firebase_core/firebase_core.dart';
import 'package:flashcard/data/word_data.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FlashcardRepository {
  //load flashcard data from DB
  Future<List<WordData>> getFlashcards() async {
    List<WordData> data = [];
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    await firestore.collection('words').doc('all_word').get().then((snapshot) {
      if (!snapshot.exists)
        print('data is not exist');
      else {
        Map<String, dynamic> word_data = snapshot.data();
        word_data.forEach((key, value) {
          data.add(WordData.fromJson(value));
        });
      }
    });
    //await print(data);
    return data;
  }
}
