import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/annotations.dart';
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
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
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  context.colorScheme.primary.withOpacity(.7),
                  context.colorScheme.primary.withOpacity(.2),
                ],
              ),
              image: const DecorationImage(
                image: AssetImage(
                  Assets.assetsImagesBallondor,
                ),
                fit: BoxFit.cover,
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
                  38.vGap,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
