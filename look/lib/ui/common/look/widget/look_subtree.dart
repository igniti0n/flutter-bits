import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:look/ui/common/look/look_data/look_data.dart';
import 'package:look/ui/common/look/look_data/specific_look_data/color_look_data.dart';
import 'package:look/ui/common/look/look_data/specific_look_data/motion_look_data.dart';
import 'package:look/ui/common/look/look_data/specific_look_data/shape_look_data.dart';
import 'package:look/ui/common/look/look_data/specific_look_data/typography_look_data.dart';
import 'package:look/ui/common/look/widget/look.dart';
import 'package:look/ui/common/look/widget/user_specific_color_provider.dart';

/// This is widget that uses [Look] but it expands it with [UserSpecificColorProvider] so it can be refreshed at runtime.
///
/// If you don't have an use case where you need a runtime theme change, then you don't need to use this or
/// [UserSpecificColorProvider]
class LookSubtree extends ConsumerWidget {
  const LookSubtree({
    @required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final Color color = watch(userSpecificColorProvider.state);

    return Look(
      lookData: _createLookData(color),
      child: child,
    );
  }

  LookData _createLookData(Color userSpecificColor) {
    return LookData(
      color: ColorLookData.getDefaultWithUserSpecificColor(userSpecificColor),
      motion: const MotionLookData.getDefault(),
      shape: ShapeLookData.getDefault(),
      typography: const TypographyLookData.getDefault(),
    );
  }
}
