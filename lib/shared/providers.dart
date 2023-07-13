import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kevin_ivy_wedding/application/wedding_wishes_form_state.dart';
import 'package:kevin_ivy_wedding/application/wedding_wishes_notifier.dart';
import 'package:kevin_ivy_wedding/infrastructure/wedding_wishes_remote_service.dart';
import 'package:kevin_ivy_wedding/infrastructure/wedding_wishes_repository.dart';

// final internetConnectionCheckerProvider = Provider((ref) => InternetConnectionChecker());

final firebaseFirestoreStorageProvider = Provider((ref) => FirebaseFirestore.instance);

final weddingWishesRemoteServiceProvider = Provider((ref) => WeddingWishesRemoteService(ref.watch(firebaseFirestoreStorageProvider)));

final weddingWishesRepositoryProvider = Provider((ref) => WeddingWishesRepository(ref.watch(weddingWishesRemoteServiceProvider)));

final weddingWishesNotifierProvider = StateNotifierProvider<WeddingWishesFormNotifier, WeddingWishesFormState>(
  (ref) => WeddingWishesFormNotifier(ref.watch(weddingWishesRepositoryProvider))
);