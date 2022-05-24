import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, text }

class AppButton extends StatelessWidget {
  final ButtonType type;
  final void Function()? onPressed;
  final bool isLoading;
  final IconData? iconData;
  final String title;

  const AppButton({
    Key? key,
    required this.type,
    this.onPressed,
    this.isLoading = false,
    this.iconData,
    required this.title,
  }) : super(key: key);

  void Function()? get _onPressedAction {
    if (isLoading) return () {};
    return onPressed;
  }

  Widget? get _icon => iconData != null ? Icon(iconData, size: 19) : null;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.primary:
        final buttonStyle = Theme.of(context).elevatedButtonTheme.style;
        if (_icon != null && !isLoading) {
          return ElevatedButton.icon(
            onPressed: _onPressedAction,
            icon: _icon!,
            label: _ButtonChild(
                title: title, buttonStyle: buttonStyle, isLoading: isLoading),
          );
        }
        return ElevatedButton(
          onPressed: _onPressedAction,
          child: _ButtonChild(
              title: title, buttonStyle: buttonStyle, isLoading: isLoading),
        );
      case ButtonType.secondary:
        final buttonStyle = Theme.of(context).outlinedButtonTheme.style;
        if (_icon != null && !isLoading) {
          return OutlinedButton.icon(
            onPressed: _onPressedAction,
            icon: _icon!,
            label: _ButtonChild(
                title: title, buttonStyle: buttonStyle, isLoading: isLoading),
          );
        }
        return OutlinedButton(
          onPressed: _onPressedAction,
          child: _ButtonChild(
              title: title, buttonStyle: buttonStyle, isLoading: isLoading),
        );
      case ButtonType.text:
        final buttonStyle = Theme.of(context).textButtonTheme.style;
        if (_icon != null && !isLoading) {
          return TextButton.icon(
            onPressed: _onPressedAction,
            icon: _icon!,
            label: _ButtonChild(
                title: title, buttonStyle: buttonStyle, isLoading: isLoading),
          );
        }
        return TextButton(
          onPressed: _onPressedAction,
          child: _ButtonChild(
              title: title, buttonStyle: buttonStyle, isLoading: isLoading),
        );
    }
  }
}

class _ButtonChild extends StatelessWidget {
  final String title;
  final bool isLoading;
  final ButtonStyle? buttonStyle;

  const _ButtonChild(
      {Key? key,
      required this.title,
      required this.buttonStyle,
      required this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const SizedBox(
        height: 20,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 2,
        ),
      );
    }
    return Text(title);
  }
}
