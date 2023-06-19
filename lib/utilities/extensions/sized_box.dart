import 'package:flutter/material.dart';

extension SizedBoxWidth on double {
  SizedBox get w => SizedBox(width: this);
}

// extension SizedBoxHeight on double {
//   SizedBox get h => SizedBox(height: this);
// }

extension SizedBoxx on num {
  SizedBox get h => SizedBox(height: toDouble());
}
