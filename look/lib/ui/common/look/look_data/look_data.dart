import 'specific_look_data/color_look_data.dart';
import 'specific_look_data/motion_look_data.dart';
import 'specific_look_data/shape_look_data.dart';
import 'specific_look_data/typography_look_data.dart';

class LookData {
  const LookData({
    required this.color,
    required this.motion,
    required this.shape,
    required this.typography,
  });

  final ColorLookData color;
  final MotionLookData motion;
  final ShapeLookData shape;
  final TypographyLookData typography;
}
