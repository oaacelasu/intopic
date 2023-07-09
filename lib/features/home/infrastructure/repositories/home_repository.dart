

import 'package:intopic/features/home/domain/repositories/i_home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository(this.ref);

  final ProviderRef<IHomeRepository> ref;

}
