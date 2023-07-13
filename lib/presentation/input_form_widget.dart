import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kevin_ivy_wedding/shared/providers.dart';

class InputFormWidget extends ConsumerStatefulWidget {
  const InputFormWidget({Key? key}) : super(key: key);

  @override
  InputFormWidgetState createState() => InputFormWidgetState();
}

class InputFormWidgetState extends ConsumerState<InputFormWidget> {
  @override
  Widget build(BuildContext context) {
    var provider = ref.watch(weddingWishesNotifierProvider);

    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff).withOpacity(0.7),
        border: Border.all(
          color: const Color(0xffFFD700),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(height: 10),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              provider.nameErrorStatus
                  ? provider.nameErrorMessage!
                  : "Name / 姓名",
              style: const TextStyle(
                fontSize: 18,
                fontFamily: "Dancing_Script",
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 50,
            width: 320,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: const Color(0xffffffff).withOpacity(0.7),
              border: Border.all(
                color: const Color(0xffFFD700),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: provider.nameController,
              cursorColor: Colors.black,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                counterText: "",
                contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              ),
              maxLength: 40,
            ),
          ),
          const SizedBox(height: 10),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              provider.wishesErrorStatus
                  ? provider.wishesErrorMessage!
                  : "Well Wishes / 祝福",
              style: const TextStyle(
                fontSize: 18,
                fontFamily: "Dancing_Script",
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              width: 320,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: const Color(0xffffffff).withOpacity(0.7),
                border: Border.all(
                  color: const Color(0xffFFD700),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                controller: provider.wishesController,
                cursorColor: Colors.black,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  counterText: "",
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                ),
                maxLines: null,
                maxLength: 300,
              ),
            ),
          ),
          const SizedBox(height: 10),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                ref.read(weddingWishesNotifierProvider.notifier).addWeddingWishes();
              },
              child: Container(
                height: 50,
                width: 320,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff).withOpacity(0.7),
                  border: Border.all(
                    color: const Color(0xffFFD700),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Submit / 发送",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Dancing_Script",
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
