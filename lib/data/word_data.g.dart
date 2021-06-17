// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordData _$_$_WordDataFromJson(Map<String, dynamic> json) {
  return _$_WordData(
    id: json['id'] as int,
    word: json['word'] as String,
    jpn: json['jpn'] as String,
    count: json['count'] as int,
    isRemembered: json['isRemembered'] as bool,
  );
}

Map<String, dynamic> _$_$_WordDataToJson(_$_WordData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'jpn': instance.jpn,
      'count': instance.count,
      'isRemembered': instance.isRemembered,
    };
