import 'package:flutter/material.dart';
import 'package:get/get.dart';

void openBottomSheet(
        {required Widget content,
        required VoidCallback onComplete,
        double height = 400,
        bool isElevated = false}) =>
    showModalBottomSheet(
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      context: Get.context!,
      builder: (context) => isElevated
          ? Container(
              height: height,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: content,
            )
          : content,
    ).whenComplete(() => onComplete());
