import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn({required this.label, required this.onPressed, super.key, this.enabled = true});

  final String label;
  final VoidCallback onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(delay: const Duration(milliseconds: 200));
    void handleOnPressed() => debouncer(onPressed);

    return FilledButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(Get.width - AppDimens.xlg, AppDimens.xxslg),
        side: BorderSide(color: context.primaryContainerColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.md),
        ),
      ),
      onPressed: enabled ? handleOnPressed : null,
      child: Text(label, style: context.titleLarge.regular.withColor(context.onPrimaryColor)),
    );
  }
}

class SecondaryBtn extends StatelessWidget {
  const SecondaryBtn({required this.label, required this.onPressed, super.key, this.enabled = true});

  final String label;
  final VoidCallback onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(delay: const Duration(milliseconds: 200));
    void handleOnPressed() => debouncer(onPressed);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(Get.width - AppDimens.xlg, AppDimens.xxslg),
        side: BorderSide(color: context.primaryContainerColor),
        backgroundColor: context.onPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.md),
        ),
      ),
      onPressed: enabled ? handleOnPressed : null,
      child: Text(label, style: context.titleLarge.regular.withColor(context.primaryColor)),
    );
  }
}
