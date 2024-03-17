import 'package:flutter/material.dart';
import 'package:for_you_delivery/utils/theme/custom_themes/appbar_theme.dart';
import 'package:for_you_delivery/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:for_you_delivery/utils/theme/custom_themes/chip_theme.dart';
import 'package:for_you_delivery/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:for_you_delivery/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:for_you_delivery/utils/theme/custom_themes/text_field_theme.dart';
import 'package:for_you_delivery/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'IBMP',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'IBMP',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.green,
    textTheme: TTextTheme.darkTextheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
