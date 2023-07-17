import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intopic/app.dart';
import 'package:intopic/bootstrap.dart';
import 'package:intopic/flavors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  F.appFlavor = Flavor.dev;
  runApp(
    UncontrolledProviderScope(
      container: await bootstrap(),
      child: const App(),
    ),
  );
}
