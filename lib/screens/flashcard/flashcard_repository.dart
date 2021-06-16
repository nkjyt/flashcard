import 'package:flashcard/data/word_data.dart';
import 'package:flutter/services.dart';
import 'package:flashcard/DB/database_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlashcardRepository {
  final dbHelper = DatabaseHelper.instance;

  //load flashcard data from DB
  Future<List<WordData>> getFlashcards() async {
    List<WordData> data = [];

    String path = 'assets/all.csv';
    final csv = await rootBundle.loadString("assets/all.csv");

    final flahscardData = await dbHelper.queryAllRows();
    for (var val in flahscardData) {
      data.add(WordData.fromJson(val));
    }
    await print(data);
    return data;
  }

  //初回起動時にデータベースを初期化する
  Future initializeDatabase() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLaunched = await prefs.getBool('launched') ?? false;

    //初回起動時の処理，DBの初期化
    if (!isLaunched) {
      List<Map<String, dynamic>> dbData = [];
      String path = 'assets/all.csv';
      final csv = await rootBundle.loadString("assets/all.csv");

      //カンマ区切りのデータを配列に
      var isdelete = false;
      for (String line in csv.split("\r\n")) {
        if (!isdelete) {
          //カラム名のrowを飛ばす
          isdelete = true;
          continue;
        }
        if (line == "") break;
        List rows = line.split(',');

        dbData.add({
          'id': rows[0],
          'word': rows[1],
          'jpn': rows[2],
          'count': int.parse(rows[3]),
          'isRemembered': 0
        });
      }

      await dbHelper.initializeDatabase(dbData);
      //await dbHelper.deleteDatabase();
      await prefs.setBool('launched', true);
      await print("First Launch finished");
    } else {
      print("Hello again");
      return;
    }
  }
}
