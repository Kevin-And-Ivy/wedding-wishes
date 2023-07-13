// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wedding_wishes_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeddingWishes {
  String get wishId => throw _privateConstructorUsedError;
  DateTime get wishDateTime => throw _privateConstructorUsedError;
  String get wishSender => throw _privateConstructorUsedError;
  String get wishMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeddingWishesCopyWith<WeddingWishes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeddingWishesCopyWith<$Res> {
  factory $WeddingWishesCopyWith(
          WeddingWishes value, $Res Function(WeddingWishes) then) =
      _$WeddingWishesCopyWithImpl<$Res, WeddingWishes>;
  @useResult
  $Res call(
      {String wishId,
      DateTime wishDateTime,
      String wishSender,
      String wishMessage});
}

/// @nodoc
class _$WeddingWishesCopyWithImpl<$Res, $Val extends WeddingWishes>
    implements $WeddingWishesCopyWith<$Res> {
  _$WeddingWishesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishId = null,
    Object? wishDateTime = null,
    Object? wishSender = null,
    Object? wishMessage = null,
  }) {
    return _then(_value.copyWith(
      wishId: null == wishId
          ? _value.wishId
          : wishId // ignore: cast_nullable_to_non_nullable
              as String,
      wishDateTime: null == wishDateTime
          ? _value.wishDateTime
          : wishDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wishSender: null == wishSender
          ? _value.wishSender
          : wishSender // ignore: cast_nullable_to_non_nullable
              as String,
      wishMessage: null == wishMessage
          ? _value.wishMessage
          : wishMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeddingWishesCopyWith<$Res>
    implements $WeddingWishesCopyWith<$Res> {
  factory _$$_WeddingWishesCopyWith(
          _$_WeddingWishes value, $Res Function(_$_WeddingWishes) then) =
      __$$_WeddingWishesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String wishId,
      DateTime wishDateTime,
      String wishSender,
      String wishMessage});
}

/// @nodoc
class __$$_WeddingWishesCopyWithImpl<$Res>
    extends _$WeddingWishesCopyWithImpl<$Res, _$_WeddingWishes>
    implements _$$_WeddingWishesCopyWith<$Res> {
  __$$_WeddingWishesCopyWithImpl(
      _$_WeddingWishes _value, $Res Function(_$_WeddingWishes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishId = null,
    Object? wishDateTime = null,
    Object? wishSender = null,
    Object? wishMessage = null,
  }) {
    return _then(_$_WeddingWishes(
      wishId: null == wishId
          ? _value.wishId
          : wishId // ignore: cast_nullable_to_non_nullable
              as String,
      wishDateTime: null == wishDateTime
          ? _value.wishDateTime
          : wishDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wishSender: null == wishSender
          ? _value.wishSender
          : wishSender // ignore: cast_nullable_to_non_nullable
              as String,
      wishMessage: null == wishMessage
          ? _value.wishMessage
          : wishMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeddingWishes implements _WeddingWishes {
  const _$_WeddingWishes(
      {required this.wishId,
      required this.wishDateTime,
      required this.wishSender,
      required this.wishMessage});

  @override
  final String wishId;
  @override
  final DateTime wishDateTime;
  @override
  final String wishSender;
  @override
  final String wishMessage;

  @override
  String toString() {
    return 'WeddingWishes(wishId: $wishId, wishDateTime: $wishDateTime, wishSender: $wishSender, wishMessage: $wishMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeddingWishes &&
            (identical(other.wishId, wishId) || other.wishId == wishId) &&
            (identical(other.wishDateTime, wishDateTime) ||
                other.wishDateTime == wishDateTime) &&
            (identical(other.wishSender, wishSender) ||
                other.wishSender == wishSender) &&
            (identical(other.wishMessage, wishMessage) ||
                other.wishMessage == wishMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, wishId, wishDateTime, wishSender, wishMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeddingWishesCopyWith<_$_WeddingWishes> get copyWith =>
      __$$_WeddingWishesCopyWithImpl<_$_WeddingWishes>(this, _$identity);
}

abstract class _WeddingWishes implements WeddingWishes {
  const factory _WeddingWishes(
      {required final String wishId,
      required final DateTime wishDateTime,
      required final String wishSender,
      required final String wishMessage}) = _$_WeddingWishes;

  @override
  String get wishId;
  @override
  DateTime get wishDateTime;
  @override
  String get wishSender;
  @override
  String get wishMessage;
  @override
  @JsonKey(ignore: true)
  _$$_WeddingWishesCopyWith<_$_WeddingWishes> get copyWith =>
      throw _privateConstructorUsedError;
}
