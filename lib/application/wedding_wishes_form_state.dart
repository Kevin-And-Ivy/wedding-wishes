import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wedding_wishes_form_state.freezed.dart';

@freezed
class WeddingWishesFormState with _$WeddingWishesFormState {
  const WeddingWishesFormState._();
  const factory WeddingWishesFormState({
    required bool isLoading,
    required bool errorStatus,
    required String errorMessage,
    required String nameErrorMessage,
    required bool nameErrorStatus,
    required String wishesErrorMessage,
    required bool wishesErrorStatus,
    required TextEditingController nameController,
    required TextEditingController wishesController,
    required bool submitWishesSuccessful,
  }) = _WeddingWishesFormState;

  factory WeddingWishesFormState.initial() {
    return WeddingWishesFormState(
      isLoading: false,
      errorStatus: false,
      errorMessage: "",
      nameErrorMessage: "",
      nameErrorStatus: false,
      wishesErrorMessage: "",
      wishesErrorStatus: false,
      nameController: TextEditingController(),
      wishesController: TextEditingController(),
      submitWishesSuccessful: false,
    );
  }
}
