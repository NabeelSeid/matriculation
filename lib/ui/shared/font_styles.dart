import 'package:flutter/material.dart';

final title = TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0);

TextStyle overline(context) =>
    Theme.of(context).textTheme.overline.copyWith(fontSize: 11.0);

TextStyle headline6(context) => Theme.of(context).textTheme.headline6;
