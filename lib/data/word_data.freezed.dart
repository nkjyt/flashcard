// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'word_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WordData _$WordDataFromJson(Map<String, dynamic> json) {
  return _WordData.fromJson(json);
}

/// @nodoc
class _$WordDataTearOff {
  const _$WordDataTearOff();

// ignore: unused_element
  _WordData call(
      {int id, String word, String jpn, int count, bool isRemembered}) {
    return _WordData(
      id: id,
      word: word,
      jpn: jpn,
      count: count,
      isRemembered: isRemembered,
    );
  }

// ignore: unused_element
  WordData fromJson(Map<String, Object> json) {
    return WordData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WordData = _$WordDataTearOff();

/// @nodoc
mixin _$WordData {
  int get id;
  String get word;
  String get jpn;
  int get count;
  bool get isRemembered;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WordDataCopyWith<WordData> get copyWith;
}

/// @nodoc
abstract class $WordDataCopyWith<$Res> {
  factory $WordDataCopyWith(WordData value, $Res Function(WordData) then) =
      _$WordDataCopyWithImpl<$Res>;
  $Res call({int id, String word, String jpn, int count, bool isRemembered});
}

/// @nodoc
class _$WordDataCopyWithImpl<$Res> implements $WordDataCopyWith<$Res> {
  _$WordDataCopyWithImpl(this._value, this._then);

  final WordData _value;
  // ignore: unused_field
  final $Res Function(WordData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object word = freezed,
    Object jpn = freezed,
    Object count = freezed,
    Object isRemembered = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      word: word == freezed ? _value.word : word as String,
      jpn: jpn == freezed ? _value.jpn : jpn as String,
      count: count == freezed ? _value.count : count as int,
      isRemembered:
          isRemembered == freezed ? _value.isRemembered : isRemembered as bool,
    ));
  }
}

/// @nodoc
abstract class _$WordDataCopyWith<$Res> implements $WordDataCopyWith<$Res> {
  factory _$WordDataCopyWith(_WordData value, $Res Function(_WordData) then) =
      __$WordDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String word, String jpn, int count, bool isRemembered});
}

/// @nodoc
class __$WordDataCopyWithImpl<$Res> extends _$WordDataCopyWithImpl<$Res>
    implements _$WordDataCopyWith<$Res> {
  __$WordDataCopyWithImpl(_WordData _value, $Res Function(_WordData) _then)
      : super(_value, (v) => _then(v as _WordData));

  @override
  _WordData get _value => super._value as _WordData;

  @override
  $Res call({
    Object id = freezed,
    Object word = freezed,
    Object jpn = freezed,
    Object count = freezed,
    Object isRemembered = freezed,
  }) {
    return _then(_WordData(
      id: id == freezed ? _value.id : id as int,
      word: word == freezed ? _value.word : word as String,
      jpn: jpn == freezed ? _value.jpn : jpn as String,
      count: count == freezed ? _value.count : count as int,
      isRemembered:
          isRemembered == freezed ? _value.isRemembered : isRemembered as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WordData implements _WordData {
  const _$_WordData(
      {this.id, this.word, this.jpn, this.count, this.isRemembered});

  factory _$_WordData.fromJson(Map<String, dynamic> json) =>
      _$_$_WordDataFromJson(json);

  @override
  final int id;
  @override
  final String word;
  @override
  final String jpn;
  @override
  final int count;
  @override
  final bool isRemembered;

  @override
  String toString() {
    return 'WordData(id: $id, word: $word, jpn: $jpn, count: $count, isRemembered: $isRemembered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WordData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)) &&
            (identical(other.jpn, jpn) ||
                const DeepCollectionEquality().equals(other.jpn, jpn)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.isRemembered, isRemembered) ||
                const DeepCollectionEquality()
                    .equals(other.isRemembered, isRemembered)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(word) ^
      const DeepCollectionEquality().hash(jpn) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(isRemembered);

  @JsonKey(ignore: true)
  @override
  _$WordDataCopyWith<_WordData> get copyWith =>
      __$WordDataCopyWithImpl<_WordData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WordDataToJson(this);
  }
}

abstract class _WordData implements WordData {
  const factory _WordData(
      {int id,
      String word,
      String jpn,
      int count,
      bool isRemembered}) = _$_WordData;

  factory _WordData.fromJson(Map<String, dynamic> json) = _$_WordData.fromJson;

  @override
  int get id;
  @override
  String get word;
  @override
  String get jpn;
  @override
  int get count;
  @override
  bool get isRemembered;
  @override
  @JsonKey(ignore: true)
  _$WordDataCopyWith<_WordData> get copyWith;
}
