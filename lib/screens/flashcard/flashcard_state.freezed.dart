// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'flashcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FlashcardStateTearOff {
  const _$FlashcardStateTearOff();

// ignore: unused_element
  _FlashcardState call({List<WordData> flashcards = const []}) {
    return _FlashcardState(
      flashcards: flashcards,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FlashcardState = _$FlashcardStateTearOff();

/// @nodoc
mixin _$FlashcardState {
  List<WordData> get flashcards;

  @JsonKey(ignore: true)
  $FlashcardStateCopyWith<FlashcardState> get copyWith;
}

/// @nodoc
abstract class $FlashcardStateCopyWith<$Res> {
  factory $FlashcardStateCopyWith(
          FlashcardState value, $Res Function(FlashcardState) then) =
      _$FlashcardStateCopyWithImpl<$Res>;
  $Res call({List<WordData> flashcards});
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
    Object flashcards = freezed,
  }) {
    return _then(_value.copyWith(
      flashcards: flashcards == freezed
          ? _value.flashcards
          : flashcards as List<WordData>,
    ));
  }
}

/// @nodoc
abstract class _$FlashcardStateCopyWith<$Res>
    implements $FlashcardStateCopyWith<$Res> {
  factory _$FlashcardStateCopyWith(
          _FlashcardState value, $Res Function(_FlashcardState) then) =
      __$FlashcardStateCopyWithImpl<$Res>;
  @override
  $Res call({List<WordData> flashcards});
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
    Object flashcards = freezed,
  }) {
    return _then(_FlashcardState(
      flashcards: flashcards == freezed
          ? _value.flashcards
          : flashcards as List<WordData>,
    ));
  }
}

/// @nodoc
class _$_FlashcardState
    with DiagnosticableTreeMixin
    implements _FlashcardState {
  const _$_FlashcardState({this.flashcards = const []})
      : assert(flashcards != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<WordData> flashcards;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlashcardState(flashcards: $flashcards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlashcardState'))
      ..add(DiagnosticsProperty('flashcards', flashcards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlashcardState &&
            (identical(other.flashcards, flashcards) ||
                const DeepCollectionEquality()
                    .equals(other.flashcards, flashcards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flashcards);

  @JsonKey(ignore: true)
  @override
  _$FlashcardStateCopyWith<_FlashcardState> get copyWith =>
      __$FlashcardStateCopyWithImpl<_FlashcardState>(this, _$identity);
}

abstract class _FlashcardState implements FlashcardState {
  const factory _FlashcardState({List<WordData> flashcards}) =
      _$_FlashcardState;

  @override
  List<WordData> get flashcards;
  @override
  @JsonKey(ignore: true)
  _$FlashcardStateCopyWith<_FlashcardState> get copyWith;
}
