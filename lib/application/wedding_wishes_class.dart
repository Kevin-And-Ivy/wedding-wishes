import 'package:freezed_annotation/freezed_annotation.dart';

part 'wedding_wishes_class.freezed.dart';

@freezed
class WeddingWishes with _$WeddingWishes {
  const factory WeddingWishes({
    required String wishId,
    required DateTime wishDateTime,
    required String wishSender,
    required String wishMessage,
  }) = _WeddingWishes;
}