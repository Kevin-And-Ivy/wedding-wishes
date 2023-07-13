import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kevin_ivy_wedding/application/wedding_wishes_class.dart';

part 'wedding_wishes_dto.freezed.dart';
part 'wedding_wishes_dto.g.dart';

/// Data Transfer Object(DTO) for Task to facilitate conversion between json and application's data type.
@freezed
class WeddingWishesDTO with _$WeddingWishesDTO {
  const WeddingWishesDTO._();
  const factory WeddingWishesDTO({
    required String wishId,
    required String wishDateTime,
    required String wishSender,
    required String wishMessage,
  }) = _WeddingWishesDTO;

  factory WeddingWishesDTO.toDTO(WeddingWishes wishes) {
    return WeddingWishesDTO(
      wishId: wishes.wishId,
      wishDateTime: wishes.wishDateTime.toIso8601String(),
      wishSender: wishes.wishSender,
      wishMessage: wishes.wishMessage,
    );
  }

  String getWishId() {
    return wishId;
  }

  WeddingWishes fromDTO() {
    return WeddingWishes(
      wishId: wishId,
      wishDateTime: DateTime.parse(wishDateTime),
      wishSender: wishSender,
      wishMessage: wishMessage,
    );
  }

  // toJson() created by json_serializable package
  factory WeddingWishesDTO.fromJson(Map<String, Object?> json) =>
      _$WeddingWishesDTOFromJson(json);
}
