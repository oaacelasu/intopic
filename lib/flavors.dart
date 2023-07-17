/// Flavor enum
enum Flavor {
  /// Development
  dev,

  /// Staging
  stg,

  /// Production
  prod,
}

/// Flavor class
class F {
  /// Flavor
  static Flavor? appFlavor;

  /// Flavor name
  static String get name => appFlavor?.name ?? '';

  /// App title
  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Intopic Dev';
      case Flavor.stg:
        return 'Intopic Stg';
      case Flavor.prod:
        return 'Intopic';
      case null:
        return 'Intopic';
    }
  }

  /// App base url
  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return 'http://10.0.2.2:3001';
      case Flavor.stg:
        return 'https://stg.intopic.it';
      case Flavor.prod:
        return 'https://www.intopic.it';
      case null:
        return 'Intopic';
    }
  }
}
