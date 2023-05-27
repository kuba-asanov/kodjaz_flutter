import 'package:freezed_annotation/freezed_annotation.dart';
part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    @Default('') String questionId,
    @Default('') String question,
    @Default('') String correctAnswerId,
    String? userAnswerId,
    String? isCorrectAnswer,
    @Default('') String description,
    @Default([]) List<Answer> answers,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    // Cognito provided ID.
    @Default('') String id,
    String? name,
    String? description,
    String? title,
    String? quizId,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    @Default('') String answerId,
    @Default('') String answer,
  }) = _Answer;

  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
}

@freezed
class UserAnswer with _$UserAnswer {
  const factory UserAnswer({
    @Default('') String questionId,
    String? answerId,
  }) = _UserAnswer;

  factory UserAnswer.fromJson(Map<String, Object?> json) =>
      _$UserAnswerFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    @Default('') String id,
    @Default('') String drugId,
    int? questionCount,
    int? correctAnswerCount,
    double? earnedPoints,
    double? maxPoint,
    double? percentage,
  }) = _Results;

  factory Results.fromJson(Map<String, Object?> json) =>
      _$ResultsFromJson(json);
}
