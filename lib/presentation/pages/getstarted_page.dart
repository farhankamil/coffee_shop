import 'package:coffee_shop/common/theme.dart';
import 'package:coffee_shop/presentation/main_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedPage extends StatelessWidget {
  static const routeName = '/get_started';

  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: Image.asset(
            'assets/image_3.png',
            height: 650,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 362,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                colors: colors,
                stops: stops,
              ),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 34,
                          decoration: TextDecoration.none,
                        ),
                        children: const [
                          TextSpan(
                            text: 'Coffee so good,\n',
                          ),
                          TextSpan(
                            text: 'your taste buds\n',
                          ),
                          TextSpan(
                            text: 'will love it.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: primaryTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 14,
                          decoration: TextDecoration.none,
                        ),
                        children: const [
                          TextSpan(
                            text: 'The best grain, the finest roast, the \n',
                          ),
                          TextSpan(
                            text: 'powerful flavor.',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 30),
                      child: TextButton(
                          onPressed: () {
                            context.go(MainNavigation.routeName);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: backgroundColor2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                          child: Text(
                            'Get Started',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
