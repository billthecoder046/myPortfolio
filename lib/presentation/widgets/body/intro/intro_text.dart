import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_extensions.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'intro_actions.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.helloIM,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s16
              : AppStyles.s32,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 6),
        Text(
          AppStrings.developerName,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s24
              : AppStyles.s52,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: context.width < DeviceType.mobile.getMaxWidth()
              ? context.width
              : context.width / 2,
          child: Text(
            AppStrings.introMsg,
            style: context.width < DeviceType.ipad.getMaxWidth()
                ? AppStyles.s14
                : AppStyles.s18,
            textAlign: _getTextAlign(context.width),
            softWrap: true,
          ),
        ),
        const IntoActions(),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlign.center
        : TextAlign.start;
  }
}