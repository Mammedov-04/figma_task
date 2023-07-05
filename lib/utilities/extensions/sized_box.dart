import 'package:flutter/material.dart';



// extension SizedBoxHeight on double {
//   SizedBox get h => SizedBox(height: this);
// }

extension SizedBoxx on num {
  SizedBox get h => SizedBox(height: toDouble());
}

extension SizedBoxWidth on num {
  SizedBox get w => SizedBox(width: toDouble());
}
