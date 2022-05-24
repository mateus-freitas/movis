import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movis/infrastructure/core/constants.dart';
import 'package:movis/presentation/core/theme/app_colors.dart';

PreferredSizeWidget getPlatformAppBar(BuildContext context, Widget title,
    {Widget? trailing}) {
  const bgColor = AppColors.neutral20;
  if (isAppleDevice) {
    return CupertinoNavigationBar(
      backgroundColor: bgColor,
      middle: title,
      trailing: trailing,
    );
  }
  return AppBar(
    backgroundColor: bgColor,
    title: title,
    actions: trailing != null ? [trailing] : null,
  );
}
