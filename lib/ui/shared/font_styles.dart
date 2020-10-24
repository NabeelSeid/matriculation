import 'package:flutter/material.dart';
import 'package:matric/ui/shared/colors.dart';

final title = TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0);

TextStyle overline(context) =>
    Theme.of(context).textTheme.overline.copyWith(fontSize: 11.0);

TextStyle headline6(context) => Theme.of(context).textTheme.headline6;

TextStyle subtitle2(context) => Theme.of(context).textTheme.subtitle2;

TextStyle pageIndicatorStyle(context) => Theme.of(context)
    .textTheme
    .headline6
    .copyWith(fontWeight: FontWeight.normal);

TextStyle selectedPageIndicatorStyle(context) =>
    Theme.of(context).textTheme.headline3.copyWith(color: textColor(context));
