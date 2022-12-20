import 'package:flutter/material.dart';

import 'rti_colors.dart';

class RTIButtonStyles {
  static final dialogButtonStyle = TextButton.styleFrom(
    fixedSize: const Size(140, 35),
    backgroundColor: RTIColors.liteblue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );

    static final dialogBlueButtonStyle = TextButton.styleFrom(
    fixedSize: const Size(140, 35),
    backgroundColor: RTIColors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );
}
