import 'package:flutter/material.dart';

extension ContextSize on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  double get width => size.width;
  double get height => size.height;
}
