import 'dart:convert' as convert;
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:intopic/features/auth/application/auth_state_notifier.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:intopic/features/topics/domain/repositories/i_topic_repository.dart';
import 'package:intopic/features/topics/infrastructure/dtos/topic_dto.dart';
import 'package:intopic/flavors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class TopicRepository implements ITopicRepository {
  TopicRepository(this.ref);

  final ProviderRef<ITopicRepository> ref;

  @override
  Future<Either<Failure, Topic>> getTopicDetail(String topicId) async {
    // TODO(oscar): implement getTopicDetail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Topic>>> getTopics() async {
    // Make an HTTP Get request to get the topics
    final url = Uri.parse('${F.baseUrl}/topics');

    try {
      final response = await http.get(url, headers: {
        HttpHeaders.authorizationHeader: ref.read(authStateNotifierProvider.notifier).token,
      },);

      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        final topics = (jsonResponse['allTopics'] as List<dynamic>)
            .map((e) => TopicDto.fromJson(e as Map<String, dynamic>).toDomain())
            .toList();
        return right(topics);
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        return left(Failure.unprocessableEntity(message: jsonResponse['message'] as String));
      }
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
