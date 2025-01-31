import 'package:flutter/material.dart';

void customBottomSheet({
  required BuildContext context,
  required bool useSafeArea,
  required bool isScrollControlled,
  required Widget widget,
  double radius = 24,
  Color bgColor = Colors.white,
  bool isDismissible = false,
  Function()? oncomplete,
}) {
  showModalBottomSheet(
    context: context,
    useSafeArea: useSafeArea,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    builder: (context) {
      return Container(
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius),
              )),
          child: widget);
    },
  ).whenComplete(oncomplete ?? () {});
}
