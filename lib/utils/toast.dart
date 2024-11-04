import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showToast(String? title) {
  toastification.show(
    type: ToastificationType.info,
    style: ToastificationStyle.simple,
    title: Text(title ?? "Default Title"),
    alignment: Alignment.bottomCenter,
    autoCloseDuration: const Duration(seconds: 5),
    animationBuilder: (
      context,
      animation,
      alignment,
      child,
    ) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    borderRadius: BorderRadius.circular(100.0),
    boxShadow: highModeShadow,
    applyBlurEffect: true,
  );
}
