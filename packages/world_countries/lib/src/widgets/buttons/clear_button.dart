import "package:flutter/material.dart";

import "../../constants/ui_constants.dart";

class ClearButton extends StatelessWidget {
  const ClearButton(this._controller, {this.icon = defaultIcon, super.key});

  static const defaultIcon = Icon(Icons.clear);

  final TextEditingController _controller;
  final Widget icon;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: _controller,
        builder: (_, controller, __) => AnimatedCrossFade(
          firstChild: IconButton(onPressed: _controller.clear, icon: icon),
          secondChild: UiConstants.placeholder,
          firstCurve: UiConstants.switchOutCurve,
          secondCurve: UiConstants.switchInCurve,
          sizeCurve: UiConstants.switchOutCurve,
          crossFadeState: controller.text.isEmpty
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: UiConstants.duration,
        ),
      );
}
