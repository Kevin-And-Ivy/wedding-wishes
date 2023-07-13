// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wedding_wishes_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeddingWishesDTO _$WeddingWishesDTOFromJson(Map<String, dynamic> json) {
  return _WeddingWishesDTO.fromJson(json);
}

/// @nodoc
mixin _$WeddingWishesDTO {
  String get wishId => throw _privateConstructorUsedError;
  String get wishDateTime => throw _privateConstructorUsedError;
  String get wishSender => throw _privateConstructorUsedError;
  String get wishMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeddingWishesDTOCopyWith<WeddingWishesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeddingWishesDTOCopyWith<$Res> {
  factory $WeddingWishesDTOCopyWith(
          WeddingWishesDTO value, $Res Function(WeddingWishesDTO) then) =
      _$WeddingWishesDTOCopyWithImpl<$Res, WeddingWishesDTO>;
  @useResult
  $Res call(
      {String wishId,
      String wishDateTime,
      String wishSender,
      String wishMessage});
}

/// @nodoc
class _$WeddingWishesDTOCopyWithImpl<$Res, $Val extends WeddingWishesDTO>
    implements $WeddingWishesDTOCopyWith<$Res> {
  _$WeddingWishesDTOCopyWithImpl(this._value, this._then);

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
              as String,
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
abstract class _$$_WeddingWishesDTOCopyWith<$Res>
    implements $WeddingWishesDTOCopyWith<$Res> {
  factory _$$_WeddingWishesDTOCopyWith(
          _$_WeddingWishesDTO value, $Res Function(_$_WeddingWishesDTO) then) =
      __$$_WeddingWishesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String wishId,
      String wishDateTime,
      String wishSender,
      String wishMessage});
}

/// @nodoc
class __$$_WeddingWishesDTOCopyWithImpl<$Res>
    extends _$WeddingWishesDTOCopyWithImpl<$Res, _$_WeddingWishesDTO>
    implements _$$_WeddingWishesDTOCopyWith<$Res> {
  __$$_WeddingWishesDTOCopyWithImpl(
      _$_WeddingWishesDTO _value, $Res Function(_$_WeddingWishesDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishId = null,
    Object? wishDateTime = null,
    Object? wishSender = null,
    Object? wishMessage = null,
  }) {
    return _then(_$_WeddingWishesDTO(
      wishId: null == wishId
          ? _value.wishId
          : wishId // ignore: cast_nullable_to_non_nullable
              as String,
      wishDateTime: null == wishDateTime
          ? _value.wishDateTime
          : wishDateTime // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$_WeddingWishesDTO extends _WeddingWishesDTO
    with DiagnosticableTreeMixin {
  const _$_WeddingWishesDTO(
      {required this.wishId,
      required this.wishDateTime,
      required this.wishSender,
      required this.wishMessage})
      : super._();

  factory _$_WeddingWishesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeddingWishesDTOFromJson(json);

  @override
  final String wishId;
  @override
  final String wishDateTime;
  @override
  final String wishSender;
  @override
  final String wishMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeddingWishesDTO(wishId: $wishId, wishDateTime: $wishDateTime, wishSender: $wishSender, wishMessage: $wishMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeddingWishesDTO'))
      ..add(DiagnosticsProperty('wishId', wishId))
      ..add(DiagnosticsProperty('wishDateTime', wishDateTime))
      ..add(DiagnosticsProperty('wishSender', wishSender))
      ..add(DiagnosticsProperty('wishMessage', wishMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeddingWishesDTO &&
            (identical(other.wishId, wishId) || other.wishId == wishId) &&
            (identical(other.wishDateTime, wishDateTime) ||
                other.wishDateTime == wishDateTime) &&
            (identical(other.wishSender, wishSender) ||
                other.wishSender == wishSender) &&
            (identical(other.wishMessage, wishMessage) ||
                other.wishMessage == wishMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, wishId, wishDateTime, wishSender, wishMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeddingWishesDTOCopyWith<_$_WeddingWishesDTO> get copyWith =>
      __$$_WeddingWishesDTOCopyWithImpl<_$_WeddingWishesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeddingWishesDTOToJson(
      this,
    );
  }
}

abstract class _WeddingWishesDTO extends WeddingWishesDTO {
  const factory _WeddingWishesDTO(
      {required final String wishId,
      required final String wishDateTime,
      required final String wishSender,
      required final String wishMessage}) = _$_WeddingWishesDTO;
  const _WeddingWishesDTO._() : super._();

  factory _WeddingWishesDTO.fromJson(Map<String, dynamic> json) =
      _$_WeddingWishesDTO.fromJson;

  @override
  String get wishId;
  @override
  String get wishDateTime;
  @override
  String get wishSender;
  @override
  String get wishMessage;
  @override
  @JsonKey(ignore: true)
  _$$_WeddingWishesDTOCopyWith<_$_WeddingWishesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
