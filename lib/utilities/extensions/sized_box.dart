import 'package:flutter/material.dart';

// extension SizedBoxHeight on double {
//   SizedBox get h => SizedBox(height: this);
// }

extension SizedBoxWidth on double {
  SizedBox get w => SizedBox(width: this);
}

extension SizedBoxx on num {
  SizedBox get h => SizedBox(height: toDouble());
}
