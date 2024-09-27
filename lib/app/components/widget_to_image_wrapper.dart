import 'package:flutter/material.dart';
import 'package:print_script/app/utils/widget_to_image_controller.dart';

class WidgetsToImageWrapper extends StatelessWidget {
  final Widget? child;
  final WidgetsToImageController controller;

  const WidgetsToImageWrapper({    super.key,
    required this.child,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    /// to capture widget to image by GlobalKey in RepaintBoundary
    return RepaintBoundary(
      key: controller.containerKey,
      child: child,
    );
  }
}