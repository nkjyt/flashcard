import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_data.freezed.dart';
part 'word_data.g.dart';

@freezed
abstract class WordData with _$WordData {
  const factory WordData({
    String id,
    String word,
    String jpn,
    int count,
    bool isRemembered,
  }) = _WordData;
}
