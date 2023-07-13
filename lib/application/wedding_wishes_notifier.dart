import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kevin_ivy_wedding/application/profanities_list.dart';
import 'package:kevin_ivy_wedding/application/wedding_wishes_class.dart';
import 'package:kevin_ivy_wedding/application/wedding_wishes_form_state.dart';
import 'package:kevin_ivy_wedding/infrastructure/wedding_wishes_repository.dart';

class WeddingWishesFormNotifier extends StateNotifier<WeddingWishesFormState> {
  final WeddingWishesRepository _weddingWishesRepository;
  WeddingWishesFormNotifier(this._weddingWishesRepository)
      : super(WeddingWishesFormState.initial());

  bool validateInput() {
    var stateCopy = state;
    bool errorFound = false;
    if (state.nameController.text == "") {
      stateCopy = stateCopy.copyWith(
          nameErrorStatus: true,
          nameErrorMessage: "Please enter your name / 请输入你的姓名");
      errorFound = true;
    } else {
      for (int i = 0; i < profanitiesList.length; i++) {
        if (state.nameController.text.contains(profanitiesList[i])) {
          stateCopy = stateCopy.copyWith(
              nameController: TextEditingController(),
              wishesController: TextEditingController());
          errorFound = true;
          break;
        }
      }
    }
    if (state.wishesController.text == "") {
      stateCopy = stateCopy.copyWith(
          wishesErrorStatus: true,
          wishesErrorMessage: "Please enter your name / 请输入你的姓名");
      errorFound = true;
    } else {
      for (int i = 0; i < profanitiesList.length; i++) {
        if (state.wishesController.text.contains(profanitiesList[i])) {
          stateCopy = stateCopy.copyWith(
              nameController: TextEditingController(),
              wishesController: TextEditingController());
          errorFound = true;
          break;
        }
      }
    }
    state = stateCopy;
    return errorFound;
  }

  Future<void> addWeddingWishes() async {
    state = state.copyWith(isLoading: true);
    if (!validateInput()) {
      var getListResult = await _weddingWishesRepository.addWeddingWishes(
          WeddingWishes(
              wishId: DateTime.now().microsecondsSinceEpoch.toString(),
              wishDateTime: DateTime.now(),
              wishSender: state.nameController.text,
              wishMessage: state.wishesController.text));

      getListResult.fold((failure) {
        failure.maybeMap(orElse: () {
          state = state.copyWith(
            isLoading: false,
            errorStatus: true,
            errorMessage: "An Error Occurred. Please Try Again Later.",
          );
        });
      }, (r) {
        state = state.copyWith(
            isLoading: false, errorStatus: false, submitWishesSuccessful: true);
      });
    } else {
      state = state.copyWith(isLoading: false);
    }
  }
}
