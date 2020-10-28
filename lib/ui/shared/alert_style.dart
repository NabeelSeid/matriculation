import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/font_styles.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

AlertStyle alertStyle({
  BuildContext context,
  AnimationType animationType: AnimationType.fromBottom,
  bool isCloseButton: false,
  bool isDismissable: false,
}) =>
    AlertStyle(
      animationType: animationType,
      isCloseButton: isCloseButton,
      isOverlayTapDismiss: isDismissable,
      descStyle: subtitle1(context),
      descTextAlign: TextAlign.start,
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: boxy,
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: headline6(context),
      alertAlignment: Alignment.center,
    );
