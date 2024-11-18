import 'package:bookley_appp/core/utils/app_router.dart';
import 'package:bookley_appp/core/utils/assets.dart';
import 'package:bookley_appp/features/home/presentation/views/homeView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../const.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimationLogo;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
            position: slidingAnimationLogo,
            child: Image.asset(AssetsData.logo)),
        const SizedBox(
          height: 4,
        ),
        SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read To Understand',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: const Offset(0, 0))
            .animate(animationController);
    slidingAnimationLogo =
        Tween<Offset>(begin: const Offset(-10, 0), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(
      () => setState(() {}),
    );
  }
}
