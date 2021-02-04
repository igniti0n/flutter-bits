import 'package:flutter/material.dart';

@immutable
class ColorLookData {
  const ColorLookData({
    @required this.brightness,
    @required this.primary,
    @required this.primaryVariant,
    @required this.primaryPressed,
    @required this.primaryDisabled,
    @required this.secondary,
    @required this.secondaryVariant,
    @required this.secondaryPressed,
    @required this.secondaryDisabled,
    @required this.tertiary,
    @required this.tertiaryDisabled,
    @required this.onPrimary,
    @required this.onSecondary,
    @required this.error,
    @required this.neutral,
    @required this.onError,
    @required this.background,
    @required this.onBackground,
    @required this.surface,
    @required this.onSurface,
    @required this.white10p,
    @required this.black10p,
      @required this.overlay,
      @required this.green,
      @required this.lime});

  const ColorLookData.getDefaultWithUserSpecificColor(
      this.primaryVariant) // primaryVariant is assigned as user specific color
      : brightness = Brightness.light,
        primary = const Color(0xff005670),
        primaryPressed = const Color(0xff043E50),
        primaryDisabled = const Color(0xffc4d6dc),
        secondary = const Color(0xffAA198D),
        secondaryVariant = const Color(0xffAA198D),
        secondaryPressed = const Color(0xff7c0E66),
        secondaryDisabled = const Color(0xffe3cbde),
        tertiary = const Color(0xffe5eef1),
        tertiaryDisabled = const Color(0xffebebeb),
        neutral = const Color(0xff333333),
        background = Colors.white,
        surface = Colors.white,
        error = const Color(0xffFB3449),
        onError = Colors.white,
        onBackground = const Color(0xff666666),
        onSurface = const Color(0xff666666),
        onPrimary = Colors.white,
        onSecondary = Colors.white,
        black10p = const Color(0x1A000000),
        white10p = const Color(0x1AFFFFFF),
        overlay = const Color(0x8000374F),
        green = const Color(0xff00A03B),
        lime = const Color(0xffAFCB37);

  // Material color scheme
  final Brightness brightness;
  final Color primary;
  final Color primaryVariant;
  final Color secondary;
  final Color secondaryVariant;
  final Color onPrimary;
  final Color onSecondary;
  final Color error;
  final Color onError;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;

  // Other colors
  final Color white10p;
  final Color black10p;
  final Color overlay;
  final Color green;
  final Color lime;

  final Color neutral;

  // Other: Button colors
  final Color primaryPressed;
  final Color primaryDisabled;
  final Color secondaryPressed;
  final Color secondaryDisabled;
  final Color tertiary;
  final Color tertiaryDisabled;
}
