import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/topics/domain/entities/topic.dart';

part 'dashboard.freezed.dart';

@freezed

/// Dashboard class to wrap topics and quizzes length

class Dashboard with _$Dashboard {

  /// Default constructor for the [Dashboard] class
  const factory Dashboard({
    required List<Topic> topics,
    required int noOfQuizzesAvailable,
    required int noOfTopicsAvailable,
  }) = _Dashboard;


  /// Empty constructor for the [Dashboard] class
  const factory Dashboard.empty({
     @Default([]) List<Topic> topics,
      @Default(0) int noOfQuizzesAvailable,
      @Default(0) int noOfTopicsAvailable,
  }) = _DashboardEmpty;

  const Dashboard._();

}
