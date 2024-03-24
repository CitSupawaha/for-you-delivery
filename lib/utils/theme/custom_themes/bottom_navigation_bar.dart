import 'package:flutter/material.dart';

class TNavigationBarTheme {
  TNavigationBarTheme._();
  static NavigationBarThemeData lightBottomNavigationBarTheme =
      NavigationBarThemeData(
          backgroundColor: Colors.white,
          indicatorColor: Colors.transparent,
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
              (Set<MaterialState> states) =>
                  states.contains(MaterialState.selected)
                      ? const IconThemeData(color: Color(0xFF53E88B))
                      : IconThemeData(color: Colors.black.withOpacity(0.7))),
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.selected)
                    ? const TextStyle(
                        color: Color(0xFF53E88B), fontWeight: FontWeight.w500)
                    : TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w500),
          ));
  static NavigationBarThemeData darkBottomNavigationBarTheme =
      NavigationBarThemeData(
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
              (Set<MaterialState> states) =>
                  states.contains(MaterialState.selected)
                      ? const IconThemeData(
                          color: Color(0xFF53E88B),
                        )
                      : IconThemeData(color: Colors.white.withOpacity(0.7))),
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.selected)
                    ? const TextStyle(
                        color: Color(0xFF53E88B), fontWeight: FontWeight.w500)
                    : TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.black,
          indicatorColor: Colors.transparent);
}
