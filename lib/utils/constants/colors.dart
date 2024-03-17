import "package:flutter/material.dart";

class TColors {
  TColors._();

  // App Basic Colors
  static const Color primaryColor = Color(0xFF15BE77);
  static const Color secondaryColor = Color(0xFF53E88B);

  // Text Colors
  static const Color textWhite = Colors.white;
  static const Color textPrimary = Color(0xFFFEAD1D);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [Color(0xFF15BE77), Color(0xFF53E88B)]);

  // Background Colors
  static const Color light = Color(0xFFFEFEFF);
  static const Color dark = Color(0xFF0D0D0D);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFF252525);
  static const Color primaryContainer = Color(0xFFFEAD1D);
  static const Color secondaryContainer = Color(0xFFBEBEBE);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF15BE77);
  static const Color buttonSecondary = Color(0xFF53E88B);
  static const Color butttonLight = Color(0xFFFEFEFF);

  // Error and Notification
  static const Color error = Color(0xFFFF6464);
  static const warning = Color(0xFFFEAD1D);
}
