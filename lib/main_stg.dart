import 'package:flutter/cupertino.dart';
import 'package:intopic/app.dart';

import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.stg;
  runApp(App());
}