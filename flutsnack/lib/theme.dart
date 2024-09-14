import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4284242065),
      surfaceTint: Color(4284242065),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4293124095),
      onPrimaryContainer: Color(4279767626),
      secondary: Color(4284374129),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293189625),
      onSecondaryContainer: Color(4279966252),
      tertiary: Color(4286272102),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957289),
      onTertiaryContainer: Color(4281274658),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294768895),
      onSurface: Color(4280032032),
      onSurfaceVariant: Color(4282861135),
      outline: Color(4286084736),
      outlineVariant: Color(4291347920),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413686),
      inversePrimary: Color(4291150079),
      primaryFixed: Color(4293124095),
      onPrimaryFixed: Color(4279767626),
      primaryFixedDim: Color(4291150079),
      onPrimaryFixedVariant: Color(4282663032),
      secondaryFixed: Color(4293189625),
      onSecondaryFixed: Color(4279966252),
      secondaryFixedDim: Color(4291347676),
      onSecondaryFixedVariant: Color(4282795353),
      tertiaryFixed: Color(4294957289),
      onTertiaryFixed: Color(4281274658),
      tertiaryFixedDim: Color(4293638352),
      onTertiaryFixedVariant: Color(4284562254),
      surfaceDim: Color(4292663520),
      surfaceBright: Color(4294768895),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374138),
      surfaceContainer: Color(4293979380),
      surfaceContainerHigh: Color(4293650415),
      surfaceContainerHighest: Color(4293255657),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282399859),
      surfaceTint: Color(4284242065),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285689513),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282532181),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285887112),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284233546),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287850621),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768895),
      onSurface: Color(4280032032),
      onSurfaceVariant: Color(4282597963),
      outline: Color(4284505703),
      outlineVariant: Color(4286347651),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413686),
      inversePrimary: Color(4291150079),
      primaryFixed: Color(4285689513),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284044687),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285887112),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284242543),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287850621),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286074980),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292663520),
      surfaceBright: Color(4294768895),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374138),
      surfaceContainer: Color(4293979380),
      surfaceContainerHigh: Color(4293650415),
      surfaceContainerHighest: Color(4293255657),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280228433),
      surfaceTint: Color(4284242065),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282399859),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280426547),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282532181),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281800489),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284233546),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768895),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280558379),
      outline: Color(4282597963),
      outlineVariant: Color(4282597963),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413686),
      inversePrimary: Color(4293847551),
      primaryFixed: Color(4282399859),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280952156),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282532181),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281084734),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284233546),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282589748),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292663520),
      surfaceBright: Color(4294768895),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374138),
      surfaceContainer: Color(4293979380),
      surfaceContainerHigh: Color(4293650415),
      surfaceContainerHighest: Color(4293255657),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291150079),
      surfaceTint: Color(4291150079),
      onPrimary: Color(4281149792),
      primaryContainer: Color(4282663032),
      onPrimaryContainer: Color(4293124095),
      secondary: Color(4291347676),
      onSecondary: Color(4281347650),
      secondaryContainer: Color(4282795353),
      onSecondaryContainer: Color(4293189625),
      tertiary: Color(4293638352),
      onTertiary: Color(4282852664),
      tertiaryContainer: Color(4284562254),
      onTertiaryContainer: Color(4294957289),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279440152),
      onSurface: Color(4293255657),
      onSurfaceVariant: Color(4291347920),
      outline: Color(4287795097),
      outlineVariant: Color(4282861135),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255657),
      inversePrimary: Color(4284242065),
      primaryFixed: Color(4293124095),
      onPrimaryFixed: Color(4279767626),
      primaryFixedDim: Color(4291150079),
      onPrimaryFixedVariant: Color(4282663032),
      secondaryFixed: Color(4293189625),
      onSecondaryFixed: Color(4279966252),
      secondaryFixedDim: Color(4291347676),
      onSecondaryFixedVariant: Color(4282795353),
      tertiaryFixed: Color(4294957289),
      onTertiaryFixed: Color(4281274658),
      tertiaryFixedDim: Color(4293638352),
      onTertiaryFixedVariant: Color(4284562254),
      surfaceDim: Color(4279440152),
      surfaceBright: Color(4282005567),
      surfaceContainerLowest: Color(4279111187),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295205),
      surfaceContainerHigh: Color(4280953135),
      surfaceContainerHighest: Color(4281676858),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291478783),
      surfaceTint: Color(4291150079),
      onPrimary: Color(4279372869),
      primaryContainer: Color(4287597255),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291610849),
      onSecondary: Color(4279637030),
      secondaryContainer: Color(4287729317),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293967316),
      onTertiary: Color(4280880157),
      tertiaryContainer: Color(4289823897),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279440152),
      onSurface: Color(4294900223),
      onSurfaceVariant: Color(4291676628),
      outline: Color(4288979372),
      outlineVariant: Color(4286874252),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255657),
      inversePrimary: Color(4282728825),
      primaryFixed: Color(4293124095),
      onPrimaryFixed: Color(4279043392),
      primaryFixedDim: Color(4291150079),
      onPrimaryFixedVariant: Color(4281544550),
      secondaryFixed: Color(4293189625),
      onSecondaryFixed: Color(4279242529),
      secondaryFixedDim: Color(4291347676),
      onSecondaryFixedVariant: Color(4281742408),
      tertiaryFixed: Color(4294957289),
      onTertiaryFixed: Color(4280485656),
      tertiaryFixedDim: Color(4293638352),
      onTertiaryFixedVariant: Color(4283312958),
      surfaceDim: Color(4279440152),
      surfaceBright: Color(4282005567),
      surfaceContainerLowest: Color(4279111187),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295205),
      surfaceContainerHigh: Color(4280953135),
      surfaceContainerHighest: Color(4281676858),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294900223),
      surfaceTint: Color(4291150079),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4291478783),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294900223),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291610849),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293967316),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279440152),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294900223),
      outline: Color(4291676628),
      outlineVariant: Color(4291676628),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255657),
      inversePrimary: Color(4280754777),
      primaryFixed: Color(4293453055),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4291478783),
      onPrimaryFixedVariant: Color(4279372869),
      secondaryFixed: Color(4293453053),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291610849),
      onSecondaryFixedVariant: Color(4279637030),
      tertiaryFixed: Color(4294958828),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293967316),
      onTertiaryFixedVariant: Color(4280880157),
      surfaceDim: Color(4279440152),
      surfaceBright: Color(4282005567),
      surfaceContainerLowest: Color(4279111187),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295205),
      surfaceContainerHigh: Color(4280953135),
      surfaceContainerHighest: Color(4281676858),
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


  List<ExtendedColor> get extendedColors => [
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
