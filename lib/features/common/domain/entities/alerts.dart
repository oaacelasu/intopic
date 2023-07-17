import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intopic/config/app_colors.dart';
import 'package:intopic/config/app_constants.dart';
import 'package:intopic/config/app_dimens.dart';
import 'package:intopic/features/common/presentation/utils/extensions/build_context_extension.dart';

enum AlertType { error, info, success }

abstract class Alert {
  const Alert(this.message, {this.type = AlertType.error});

  final String message;
  final AlertType type;

  Future<void> show() async {
    if (message.isNotEmpty) {
      await Get.closeCurrentSnackbar();
      switch (type) {
        case AlertType.error:
          _showError();
        case AlertType.info:
          _showInfo();
        case AlertType.success:
          _showSuccess();
      }
    }
  }

  void _showSuccess() => Get.showSnackbar(
        GetSnackBar(
            messageText: Text(
              message,
              style: Get.context?.bodyMedium.copyWith(color: Colors.white),
            ),
            snackPosition: SnackPosition.TOP,
            borderRadius: AppDimens.md,
            duration: AppConstants.toastDuration,
            margin: const EdgeInsets.symmetric(horizontal: AppDimens.sm),
            barBlur: 7,
            backgroundColor: AppColors.green.withOpacity(0.92),
            icon: const Icon(Icons.check_circle, color: AppColors.green),
            dismissDirection: DismissDirection.endToStart,),
      );

  void _showInfo() => Get.showSnackbar(
        GetSnackBar(
            messageText: Text(
              message,
              style: Get.context?.bodyMedium.copyWith(color: Colors.white),
            ),
            snackPosition: SnackPosition.TOP,
            borderRadius: AppDimens.md,
            duration: AppConstants.toastDuration,
            margin: const EdgeInsets.symmetric(horizontal: AppDimens.sm),
            barBlur: 7,
            backgroundColor: AppColors.blue.withOpacity(0.92),
            icon: const Icon(Icons.info, color: AppColors.blue),
            dismissDirection: DismissDirection.endToStart,),
      );

  void _showError() => Get.showSnackbar(
        GetSnackBar(
            messageText: Text(
              message,
              style: Get.context?.bodyMedium.copyWith(color: Colors.white),
            ),
            snackPosition: SnackPosition.TOP,
            borderRadius: AppDimens.md,
            duration: AppConstants.toastDuration,
            margin: const EdgeInsets.symmetric(horizontal: AppDimens.sm),
            barBlur: 7,
            backgroundColor: AppColors.red.withOpacity(0.92),
            icon: const Icon(Icons.error, color: Colors.white),
            dismissDirection: DismissDirection.endToStart,),
      );
}

class AlertError extends Alert {
  const AlertError(super.message) : super(type: AlertType.error);
}

class AlertInfo extends Alert {
  const AlertInfo(super.message) : super(type: AlertType.info);
}

class AlertSuccess extends Alert {
  const AlertSuccess(super.message) : super(type: AlertType.success);
}
