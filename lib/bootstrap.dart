import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intopic/config/providers.dart' as providers;
import 'package:intopic/firebase_options.dart';
import 'package:intopic/flavors.dart';

/// Initializes services and controllers before the start of the application
Future<ProviderContainer> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final container = ProviderContainer(
    overrides: [],
    observers: [if (F.appFlavor != Flavor.dev) _Logger()],
  );
  await providers.initializeProviders(container);
  return container;
}

class _Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint(
      '''
      {
      "provider": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
      }''',
    );
  }
}
