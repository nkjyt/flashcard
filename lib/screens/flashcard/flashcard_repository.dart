import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flashcard/data/word_data.dart';
import 'package:flashcard/data/references.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FlashcardRepository {
  //load flashcard data from DB
  Future<List<WordData>> getFlashcards() async {
    List<WordData> data = [];
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String uid = prefs.getString('uid');

    DocumentReference userRef =
        await firestore.collection(Strings.exprimentName).doc(uid);

    await userRef.get().then((snapshot) async {
      if (!snapshot.exists) {
        //userのドキュメントを初期化する
        print('data is not exist');
        DocumentReference firestoreWordRef =
            await firestore.collection('words').doc('all_word');

        await firestoreWordRef.get().then((snapshot) async {
          Map<String, dynamic> word_data = snapshot.data();
          word_data.forEach((key, value) {
            data.add(WordData.fromJson(value));
          });

          await firestore.collection(Strings.exprimentName).doc(uid).set(word_data);
        });
        
      } else {
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
