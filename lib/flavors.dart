enum Flavor {
  dev,
  stg,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Intopic Dev';
      case Flavor.stg:
        return 'Intopic Stg';
      case Flavor.prod:
        return 'Intopic';
      default:
        return 'Title';
    }
  }
}
