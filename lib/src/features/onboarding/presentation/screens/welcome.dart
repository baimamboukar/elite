import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:elite_one/src/shared/widgets/elite_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EliteWelcome extends StatelessWidget {
  const EliteWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            //width: context.width * .5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  context.colorScheme.primary.withOpacity(.7),
                  context.colorScheme.primary.withOpacity(.2),
                ],
              ),
              image: const DecorationImage(
                scale: .25,
                alignment: Alignment.bottomCenter,
                // fit: BoxFit.none,
                image: AssetImage(
                  Assets.assetsImagesPlayer,
                ),
                // fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: context.theme.primaryColor,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    context.colorScheme.primary.withOpacity(.7),
                    context.colorScheme.primary.withOpacity(.8),
                    context.colorScheme.primary.withOpacity(.9),
                    context.colorScheme.primary.withOpacity(1),
                  ],
                ),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'EliteOne',
                    style: context.theme.textTheme.displaySmall!.copyWith(
                      color: context.colorScheme.onPrimary,
                    ),
                  ),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Cameroonian football matters',
                        textStyle: context.theme.textTheme.bodyMedium!.copyWith(
                          color: context.colorScheme.onPrimary,
                          fontSize: 14,
                        ),
                        speed: const Duration(milliseconds: 50),
                        cursor: '⚽️',
                      ),
                    ],
                    //totalRepeatCount: 4,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  const Spacer(),
                  EliteButton(
                    text: 'Continue with google',
                    color: context.colorScheme.onPrimary,
                    action: () {
                      context.router.pushNamed('/elite-home');
                    },
                    icon: Image.asset(
                      Assets.assetsImagesGoogle,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  14.vGap,
                  EliteButton(
                    text: 'Continue with facebook',
                    color: const Color(0xFF1877F2),
                    action: () {},
                    icon: Image.asset(
                      Assets.assetsImagesFacebook,
                      height: 24,
                      width: 24,
                    ),
                    textColor: context.colorScheme.onPrimary,
                  ),
                  // const Spacer(),
                  // SizedBox(
                  //   height: 54,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: const [
                  //       FilteredImage(),
                  //       FilteredImage(),
                  //       FilteredImage(),
                  //       FilteredImage(),
                  //       FilteredImage(),
                  //       FilteredImage(),
                  //     ],
                  //   ),
                  // ),
                  34.vGap,
                  Text(
                    'designed by @baimamboukar',
                    style: context.textTheme.labelMedium!.copyWith(
                      color: context.colorScheme.onPrimary.withOpacity(.55),
                    ),
                  ),
                  12.vGap
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FilteredImage extends StatelessWidget {
  const FilteredImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.matrix([
        0.2126,
        0.7152,
        0.0722,
        0,
        0,
        0.2126,
        0.7152,
        0.0722,
        0,
        0,
        0.2126,
        0.7152,
        0.0722,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ]),
      child: Image.asset(
        Assets.assetsImagesFecafoot,
        height: 50,
        width: 50,
      ),
    );
  }
}
