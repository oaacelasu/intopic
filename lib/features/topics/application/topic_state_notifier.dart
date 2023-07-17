import 'dart:math';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';
import 'package:intopic/features/quizzes/domain/entities/quiz.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'topic_state.dart';
part 'topic_state_notifier.freezed.dart';
part 'topic_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class TopicStateNotifier extends _$TopicStateNotifier {
  @override
  TopicState build() {
    return const TopicState.initial();
  }

  Future<TopicState> loadTopic(String id) async {
    final failureOrSuccess = await Future.delayed(const Duration(seconds: 1), () {
      return right<Failure, Topic>(const Topic.empty().copyWith(
          id: id,
          title: Name('Ux/Ui Design'),
          description: 'Description $id',
          noOfQuizzesAvailable: 2,
          imageURL: 'https://picsum.photos/200/300',
          quizzes: List.generate(
              Random().nextInt(10),
              (index) => const Quiz.empty().copyWith(
                  id: '$index',
                  title: Name('Quiz $index'),
                  description: 'Description $index',
                  imageURL: 'https://picsum.photos/200/300',),),),);
    });

    //final failureOrSuccess = await ref.read(topicRepositoryProvider).getTopicDetail(id);
    return failureOrSuccess.fold((l) => const TopicState.initial(), (r) => TopicState(topic: r));
  }
}
