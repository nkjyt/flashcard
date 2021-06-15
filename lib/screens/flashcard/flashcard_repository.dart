import 'package:flashcard/data/word_data.dart';
import 'package:flutter/services.dart';
import 'package:csv/csv.dart';

class FlashcardRepository {
  Future<List<WordData>> getFlashcards() async {
    List<WordData> data = [];
    String path = 'assets/all.csv';
    final csv = await rootBundle.loadString("assets/all.csv");
    //List<List<dynamic>> _listData = CsvToListConverter().convert(csv);
    //print(_listData);
    WordData w = WordData();

    //カンマ区切りのデータを配列に
    var isdelete = false;
    for (String line in csv.split("\r\n")) {
      if (!isdelete) {
        isdelete = true;
        continue;
      }
      if (line == "") break;
      List rows = line.split(',');
      data.add(WordData(
          id: rows[0],
          word: rows[1],
          jpn: rows[2],
          count: int.parse(rows[3]),
          isRemembered: false));
    }
    print("csv data : $data");
    return data;
  }
}
