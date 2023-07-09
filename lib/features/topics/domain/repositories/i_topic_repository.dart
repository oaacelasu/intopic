import 'package:fpdart/fpdart.dart';
import 'package:intopic/features/auth/domain/entities/user.dart';
import 'package:intopic/features/common/domain/entities/alerts.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';

abstract class ITopicRepository {
  Future<Either<Failure, List<Topic>>> getTopics();
  Future<Either<Failure, Topic>> getTopicDetail(String topicId);
}
