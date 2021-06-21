// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'flashcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlashcardState _$FlashcardStateFromJson(Map<String, dynamic> json) {
  return _FlashcardState.fromJson(json);
}

/// @nodoc
class _$FlashcardStateTearOff {
  const _$FlashcardStateTearOff();

// ignore: unused_element
  _FlashcardState call({WordData flashcard}) {
    return _FlashcardState(
      flashcard: flashcard,
    );
  }

// ignore: unused_element
  FlashcardState fromJson(Map<String, Object> json) {
    return FlashcardState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FlashcardState = _$FlashcardStateTearOff();

/// @nodoc
mixin _$FlashcardState {
  WordData get flashcard;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FlashcardStateCopyWith<FlashcardState> get copyWith;
}

/// @nodoc
abstract class $FlashcardStateCopyWith<$Res> {
  factory $FlashcardStateCopyWith(
          FlashcardState value, $Res Function(FlashcardState) then) =
      _$FlashcardStateCopyWithImpl<$Res>;
  $Res call({WordData flashcard});

  $WordDataCopyWith<$Res> get flashcard;
}

/// @nodoc
class _$FlashcardStateCopyWithImpl<$Res>
    implements $FlashcardStateCopyWith<$Res> {
  _$FlashcardStateCopyWithImpl(this._value, this._then);

  final FlashcardState _value;
  // ignore: unused_field
  final $Res Function(FlashcardState) _then;

  @override
  $Res call({
    Object flashcard = freezed,
  }) {
    return _then(_value.copyWith(
      flashcard:
          flashcard == freezed ? _value.flashcard : flashcard as WordData,
    ));
  }

  @override
  $WordDataCopyWith<$Res> get flashcard {
    if (_value.flashcard == null) {
      return null;
    }
    return $WordDataCopyWith<$Res>(_value.flashcard, (value) {
      return _then(_value.copyWith(flashcard: value));
    });
  }
}

/// @nodoc
abstract class _$FlashcardStateCopyWith<$Res>
    implements $FlashcardStateCopyWith<$Res> {
  factory _$FlashcardStateCopyWith(
          _FlashcardState value, $Res Function(_FlashcardState) then) =
      __$FlashcardStateCopyWithImpl<$Res>;
  @override
  $Res call({WordData flashcard});

  @override
  $WordDataCopyWith<$Res> get flashcard;
}

/// @nodoc
class __$FlashcardStateCopyWithImpl<$Res>
    extends _$FlashcardStateCopyWithImpl<$Res>
    implements _$FlashcardStateCopyWith<$Res> {
  __$FlashcardStateCopyWithImpl(
      _FlashcardState _value, $Res Function(_FlashcardState) _then)
      : super(_value, (v) => _then(v as _FlashcardState));

  @override
  _FlashcardState get _value => super._value as _FlashcardState;

  @override
  $Res call({
    Object flashcard = freezed,
  }) {
    return _then(_FlashcardState(
      flashcard:
          flashcard == freezed ? _value.flashcard : flashcard as WordData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FlashcardState
    with DiagnosticableTreeMixin
    implements _FlashcardState {
  const _$_FlashcardState({this.flashcard});

  factory _$_FlashcardState.fromJson(Map<String, dynamic> json) =>
      _$_$_FlashcardStateFromJson(json);

  @override
  final WordData flashcard;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlashcardState(flashcard: $flashcard)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlashcardState'))
      ..add(DiagnosticsProperty('flashcard', flashcard));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlashcardState &&
            (identical(other.flashcard, flashcard) ||
                const DeepCollectionEquality()
                    .equals(other.flashcard, flashcard)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flashcard);

  @JsonKey(ignore: true)
  @override
  _$FlashcardStateCopyWith<_FlashcardState> get copyWith =>
      __$FlashcardStateCopyWithImpl<_FlashcardState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlashcardStateToJson(this);
  }
}

abstract class _FlashcardState implements FlashcardState {
  const factory _FlashcardState({WordData flashcard}) = _$_FlashcardState;

  factory _FlashcardState.fromJson(Map<String, dynamic> json) =
      _$_FlashcardState.fromJson;

  @override
  WordData get flashcard;
  @override
  @JsonKey(ignore: true)
  _$FlashcardStateCopyWith<_FlashcardState> get copyWith;
}
