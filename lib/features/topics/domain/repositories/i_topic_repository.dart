import 'package:fpdart/fpdart.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/home/domain/entities/dashboard.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';

abstract class ITopicRepository {
  Future<Either<Failure, Dashboard>> getTopics();

  Future<Either<Failure, Topic>> getTopicDetail(String topicId);
}
