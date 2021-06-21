// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlashcardState _$_$_FlashcardStateFromJson(Map<String, dynamic> json) {
  return _$_FlashcardState(
    flashcard: json['flashcard'] == null
        ? null
        : WordData.fromJson(json['flashcard'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FlashcardStateToJson(_$_FlashcardState instance) =>
    <String, dynamic>{
      'flashcard': instance.flashcard,
    };
