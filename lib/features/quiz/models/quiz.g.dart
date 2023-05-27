// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      questionId: json['questionId'] as String? ?? '',
      question: json['question'] as String? ?? '',
      correctAnswerId: json['correctAnswerId'] as String? ?? '',
      userAnswerId: json['userAnswerId'] as String?,
      isCorrectAnswer: json['isCorrectAnswer'] as String?,
      description: json['description'] as String? ?? '',
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'question': instance.question,
      'correctAnswerId': instance.correctAnswerId,
      'userAnswerId': instance.userAnswerId,
      'isCorrectAnswer': instance.isCorrectAnswer,
      'description': instance.description,
      'answers': instance.answers,
    };

_$_Quiz _$$_QuizFromJson(Map<String, dynamic> json) => _$_Quiz(
      id: json['id'] as String? ?? '',
      name: json['name'] as String?,
      description: json['description'] as String?,
      title: json['title'] as String?,
      quizId: json['quizId'] as String?,
    );

Map<String, dynamic> _$$_QuizToJson(_$_Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'title': instance.title,
      'quizId': instance.quizId,
    };

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      answerId: json['answerId'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'answerId': instance.answerId,
      'answer': instance.answer,
    };

_$_UserAnswer _$$_UserAnswerFromJson(Map<String, dynamic> json) =>
    _$_UserAnswer(
      questionId: json['questionId'] as String? ?? '',
      answerId: json['answerId'] as String?,
    );

Map<String, dynamic> _$$_UserAnswerToJson(_$_UserAnswer instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answerId': instance.answerId,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      id: json['id'] as String? ?? '',
      drugId: json['drugId'] as String? ?? '',
      questionCount: json['questionCount'] as int?,
      correctAnswerCount: json['correctAnswerCount'] as int?,
      earnedPoints: (json['earnedPoints'] as num?)?.toDouble(),
      maxPoint: (json['maxPoint'] as num?)?.toDouble(),
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'drugId': instance.drugId,
      'questionCount': instance.questionCount,
      'correctAnswerCount': instance.correctAnswerCount,
      'earnedPoints': instance.earnedPoints,
      'maxPoint': instance.maxPoint,
      'percentage': instance.percentage,
    };
