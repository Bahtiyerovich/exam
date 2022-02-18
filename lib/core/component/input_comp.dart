import 'package:flutter/material.dart';

class InputComp {
  static inputDecoration({
    required String hintText,
    required String labelText,
    required Icon suffixIcon,
  }) =>
      InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            RadiusConst.kMediumRadius,
          ),
        ),
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
      );
}