import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kevin_ivy_wedding/application/operation_failure.dart';
import 'package:kevin_ivy_wedding/application/wedding_wishes_class.dart';
import 'package:kevin_ivy_wedding/infrastructure/wedding_wishes_dto.dart';
import 'package:kevin_ivy_wedding/infrastructure/wedding_wishes_remote_service.dart';

class WeddingWishesRepository {
  final WeddingWishesRemoteService _weddingWishesRemoteService;

  WeddingWishesRepository(
      this._weddingWishesRemoteService);

  Future<Either<OperationFailure, Unit>> addWeddingWishes(
      WeddingWishes wish) async {
    try {
      final weddingWishesDTO = WeddingWishesDTO.toDTO(wish);
      await _weddingWishesRemoteService.addWeddingWishes(weddingWishesDTO);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code ==
          FirebaseException(
                  code: 'cancelled', plugin: "The operation was cancelled.")
              .code) {
        return left(const OperationFailure.cancelledOperation());
      }
      return left(const OperationFailure.unexpected("Unexpected error"));
    }
  }
}
