import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/apppages.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[400],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "404 Error.",
                style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),
              ),
              Text(
                "The page cannot be found.",
                style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
              ),
              SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  text: "Go back to home page",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: Colors.blue[300],
                        decoration: TextDecoration.underline,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.offNamed(AppPages.home);
                    },
                ),
              ),

              // TextButton(
              //   onPressed: () {
              //     Get.offNamed(AppPages.home);
              //   },
              //   child: Text(
              //     "go back to home page",
              //      style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
