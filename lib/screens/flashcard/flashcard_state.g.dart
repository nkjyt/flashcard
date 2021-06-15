// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlashcardState _$_$_FlashcardStateFromJson(Map<String, dynamic> json) {
  return _$_FlashcardState(
    flashcards: (json['flashcards'] as List)
            ?.map((e) =>
                e == null ? null : WordData.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_FlashcardStateToJson(_$_FlashcardState instance) =>
    <String, dynamic>{
      'flashcards': instance.flashcards,
    };
