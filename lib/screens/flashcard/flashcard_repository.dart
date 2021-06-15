import 'package:flashcard/data/word_data.dart';
import 'package:flutter/services.dart';

class FlashcardRepository {
  Future<List<WordData>> getFlashcards() async {
    List<WordData> data = [];
    String path = 'assets/all.csv';
    String csv = await rootBundle.loadString(path);

    //カンマ区切りのデータを配列に
    for (String line in csv.split("\r\n")) {
      List rows = line.split(',');
      data.add(WordData(
        id: rows[0],
        word: rows[1],
        jpn: rows[2],
        

      ));
    }
  }
}
