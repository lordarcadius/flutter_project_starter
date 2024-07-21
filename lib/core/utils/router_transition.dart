import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterTransition extends CustomTransitionPage<void> {
  final bool forMobile;

  RouterTransition({
    required LocalKey super.key,
    required super.child,
    required this.forMobile,
  }) : super(
          transitionDuration: const Duration(milliseconds: 250),
          transitionsBuilder: (_, animation, __, child) {
            return forMobile
                ? SlideTransition(
                    position: animation.drive(
                      Tween(
                        begin: const Offset(1.5, 0),
                        end: Offset.zero,
                      ).chain(
                        CurveTween(curve: Curves.ease),
                      ),
                    ),
                    child: child,
                  )
                : FadeTransition(
                    opacity: animation.drive(
                      Tween(
                        begin: 0.0,
                        end: 1.0,
                      ).chain(
                        CurveTween(curve: Curves.ease),
                      ),
                    ),
                    child: child,
                  );
          },
        );
}
