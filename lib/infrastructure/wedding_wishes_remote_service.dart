import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:kevin_ivy_wedding/infrastructure/wedding_wishes_dto.dart';

class WeddingWishesRemoteService {
  final FirebaseFirestore _firebaseFirestore;
  WeddingWishesRemoteService(this._firebaseFirestore);

  Future<Unit> addWeddingWishes(WeddingWishesDTO weddingWishesDTO) async {
    await _firebaseFirestore
        .collection('wishes')
        .doc(weddingWishesDTO.wishId)
        .set(weddingWishesDTO.toJson());
    return unit;
  }
}
