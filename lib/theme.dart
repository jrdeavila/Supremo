import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeApp = ThemeData(
  textTheme: GoogleFonts.oswaldTextTheme(),
  colorScheme: colorScheme,
  iconTheme: iconThemeApp,
  iconButtonTheme: iconButtonTheme,
  listTileTheme: listTileTheme,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final colorScheme = ColorScheme(
  primary: Colors.cyan[700]!,
  onPrimary: Colors.grey[100]!,
  secondary: Colors.cyan[100]!,
  onSecondary: Colors.grey[900]!,
  error: Colors.red[900]!,
  onError: Colors.grey[100]!,
  background: Colors.grey[100]!,
  onBackground: Colors.grey[900]!,
  surface: Colors.grey[100]!,
  onSurface: Colors.grey[900]!,
  brightness: Brightness.light,
);

final iconThemeApp = IconThemeData(
  color: Colors.grey[100],
  size: 28,
);

final listTileTheme = ListTileThemeData(
  tileColor: Colors.cyan[700],
  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
  minVerticalPadding: 10,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  iconColor: Colors.grey[100],
);

final iconButtonTheme = IconButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.cyan[700]),
    padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);
