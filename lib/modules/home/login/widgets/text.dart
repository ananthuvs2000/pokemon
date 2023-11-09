import 'package:flutter/material.dart';

class TextStyles {
  // Appbar and headings
  static TextStyle appBarHeading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  );

  static TextStyle veryLargeHeading = const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      letterSpacing: -1,
      color: Colors.white,
      shadows: [
        BoxShadow(color: Colors.black45, blurRadius: 5),
      ]);

  static TextStyle mainHeadingStyle = const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
      color: Colors.white,
      shadows: [
        BoxShadow(color: Colors.black45, blurRadius: 5),
      ]);

  // Labels and plain text
  static TextStyle labelStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle dynamicFieldLabelStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    color: Colors.black,
  );

  // Text Button style
  static TextStyle textButtonLabelStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );
}
