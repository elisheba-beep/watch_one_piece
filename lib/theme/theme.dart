import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff904b3c),
      surfaceTint: Color(0xff904b3c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad3),
      onPrimaryContainer: Color(0xff3a0a03),
      secondary: Color(0xff30628c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcfe5ff),
      onSecondaryContainer: Color(0xff001d33),
      tertiary: Color(0xff6b5f10),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff5e389),
      onTertiaryContainer: Color(0xff211c00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff221a15),
      onSurfaceVariant: Color(0xff51443b),
      outline: Color(0xff847469),
      outlineVariant: Color(0xffd6c3b6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb4a4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6e3023),
      surfaceTint: Color(0xff904b3c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaa6050),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff08466f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4978a4),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4d4300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff827527),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff221a15),
      onSurfaceVariant: Color(0xff4d4037),
      outline: Color(0xff6b5c52),
      outlineVariant: Color(0xff87786d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb4a4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff431106),
      surfaceTint: Color(0xff904b3c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6e3023),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00243e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff08466f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff282200),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4d4300),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2c2219),
      outline: Color(0xff4d4037),
      outlineVariant: Color(0xff4d4037),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffe7e2),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4a4),
      surfaceTint: Color(0xffffb4a4),
      onPrimary: Color(0xff561f13),
      primaryContainer: Color(0xff733427),
      onPrimaryContainer: Color(0xffffdad3),
      secondary: Color(0xff9ccbfb),
      onSecondary: Color(0xff003354),
      secondaryContainer: Color(0xff104a73),
      onSecondaryContainer: Color(0xffcfe5ff),
      tertiary: Color(0xffd8c770),
      onTertiary: Color(0xff383000),
      tertiaryContainer: Color(0xff514700),
      onTertiaryContainer: Color(0xfff5e389),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a120e),
      onSurface: Color(0xfff0dfd8),
      onSurfaceVariant: Color(0xffd6c3b6),
      outline: Color(0xff9e8e82),
      outlineVariant: Color(0xff51443b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff904b3c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbaab),
      surfaceTint: Color(0xffffb4a4),
      onPrimary: Color(0xff330501),
      primaryContainer: Color(0xffcc7c6a),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffa1cfff),
      onSecondary: Color(0xff00182b),
      secondaryContainer: Color(0xff6695c2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffdccc74),
      onTertiary: Color(0xff1b1600),
      tertiaryContainer: Color(0xffa09140),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a120e),
      onSurface: Color(0xfffffaf8),
      onSurfaceVariant: Color(0xffdac7ba),
      outline: Color(0xffb1a094),
      outlineVariant: Color(0xff908075),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff743528),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb4a4),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbaab),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffafaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffa1cfff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf4),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffdccc74),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a120e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf8),
      outline: Color(0xffdac7ba),
      outlineVariant: Color(0xffdac7ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff4e180d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  /// Dark Blue
  static const darkBlue = ExtendedColor(
    seed: Color(0xff0b3075),
    value: Color(0xff0b3075),
    light: ColorFamily(
      color: Color(0xff495d92),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffdae2ff),
      onColorContainer: Color(0xff001848),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff495d92),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffdae2ff),
      onColorContainer: Color(0xff001848),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff495d92),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffdae2ff),
      onColorContainer: Color(0xff001848),
    ),
    dark: ColorFamily(
      color: Color(0xffb2c5ff),
      onColor: Color(0xff182e60),
      colorContainer: Color(0xff304578),
      onColorContainer: Color(0xffdae2ff),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffb2c5ff),
      onColor: Color(0xff182e60),
      colorContainer: Color(0xff304578),
      onColorContainer: Color(0xffdae2ff),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffb2c5ff),
      onColor: Color(0xff182e60),
      colorContainer: Color(0xff304578),
      onColorContainer: Color(0xffdae2ff),
    ),
  );

  /// Blue
  static const blue = ExtendedColor(
    seed: Color(0xff105edd),
    value: Color(0xff105edd),
    light: ColorFamily(
      color: Color(0xff485d92),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffdae2ff),
      onColorContainer: Color(0xff001847),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff485d92),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffdae2ff),
      onColorContainer: Color(0xff001847),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff485d92),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffdae2ff),
      onColorContainer: Color(0xff001847),
    ),
    dark: ColorFamily(
      color: Color(0xffb2c5ff),
      onColor: Color(0xff172e60),
      colorContainer: Color(0xff304578),
      onColorContainer: Color(0xffdae2ff),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffb2c5ff),
      onColor: Color(0xff172e60),
      colorContainer: Color(0xff304578),
      onColorContainer: Color(0xffdae2ff),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffb2c5ff),
      onColor: Color(0xff172e60),
      colorContainer: Color(0xff304578),
      onColorContainer: Color(0xffdae2ff),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        darkBlue,
        blue,
      ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
