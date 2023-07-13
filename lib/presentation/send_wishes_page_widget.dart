import 'package:flutter/material.dart';
import 'package:kevin_ivy_wedding/presentation/input_form_widget.dart';
import 'package:kevin_ivy_wedding/shared/providers.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SendWishesPageWidget extends ConsumerStatefulWidget {
  const SendWishesPageWidget({Key? key}) : super(key: key);

  @override
  SendWishesPageWidgetState createState() => SendWishesPageWidgetState();
}

class SendWishesPageWidgetState extends ConsumerState<SendWishesPageWidget> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var provider = ref.watch(weddingWishesNotifierProvider);
    bool smallerThanDesktop =
        ResponsiveWrapper.of(context).isSmallerThan(DESKTOP);

    Widget formBody() => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: smallerThanDesktop ? 10 : 30),
            Stack(
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    smallerThanDesktop
                        ? "Send Your Wishes\nTo The Happy Couple"
                        : "Send Your Wishes To The Happy Couple",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 98,
                      fontFamily: "Dancing_Script",
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = const Color(0xffFFD700),
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    smallerThanDesktop
                        ? "Send Your Wishes\nTo The Happy Couple"
                        : "Send Your Wishes To The Happy Couple",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 98,
                      color: const Color(0xffffffff).withOpacity(0.7),
                      fontFamily: "Dancing_Script",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            const InputFormWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          ],
        );

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/wedding-photography-singapore.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          alignment: Alignment.center,
          child: Container(
            constraints: const BoxConstraints(
              minWidth: 400,
              maxWidth: 1200,
            ),
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: SingleChildScrollView(
                controller: scrollController,
                child: provider.isLoading
                    ? const Center(
                        child:
                            CircularProgressIndicator(color: Color(0xffFFD700)))
                    : !provider.submitWishesSuccessful
                        ? formBody()
                        : Center(
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "Thank You For Your Well Wishes\n谢谢你们的美好祝福",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 98,
                                  color:
                                      const Color(0xffffffff).withOpacity(0.7),
                                  fontFamily: "Dancing_Script",
                                ),
                              ),
                            ),
                          ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
