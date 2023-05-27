// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get questionId => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get correctAnswerId => throw _privateConstructorUsedError;
  String? get userAnswerId => throw _privateConstructorUsedError;
  String? get isCorrectAnswer => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String questionId,
      String question,
      String correctAnswerId,
      String? userAnswerId,
      String? isCorrectAnswer,
      String description,
      List<Answer> answers});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? question = null,
    Object? correctAnswerId = null,
    Object? userAnswerId = freezed,
    Object? isCorrectAnswer = freezed,
    Object? description = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswerId: null == correctAnswerId
          ? _value.correctAnswerId
          : correctAnswerId // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswerId: freezed == userAnswerId
          ? _value.userAnswerId
          : userAnswerId // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrectAnswer: freezed == isCorrectAnswer
          ? _value.isCorrectAnswer
          : isCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionId,
      String question,
      String correctAnswerId,
      String? userAnswerId,
      String? isCorrectAnswer,
      String description,
      List<Answer> answers});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? question = null,
    Object? correctAnswerId = null,
    Object? userAnswerId = freezed,
    Object? isCorrectAnswer = freezed,
    Object? description = null,
    Object? answers = null,
  }) {
    return _then(_$_Question(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswerId: null == correctAnswerId
          ? _value.correctAnswerId
          : correctAnswerId // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswerId: freezed == userAnswerId
          ? _value.userAnswerId
          : userAnswerId // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrectAnswer: freezed == isCorrectAnswer
          ? _value.isCorrectAnswer
          : isCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {this.questionId = '',
      this.question = '',
      this.correctAnswerId = '',
      this.userAnswerId,
      this.isCorrectAnswer,
      this.description = '',
      final List<Answer> answers = const []})
      : _answers = answers;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  @JsonKey()
  final String questionId;
  @override
  @JsonKey()
  final String question;
  @override
  @JsonKey()
  final String correctAnswerId;
  @override
  final String? userAnswerId;
  @override
  final String? isCorrectAnswer;
  @override
  @JsonKey()
  final String description;
  final List<Answer> _answers;
  @override
  @JsonKey()
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'Question(questionId: $questionId, question: $question, correctAnswerId: $correctAnswerId, userAnswerId: $userAnswerId, isCorrectAnswer: $isCorrectAnswer, description: $description, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.correctAnswerId, correctAnswerId) ||
                other.correctAnswerId == correctAnswerId) &&
            (identical(other.userAnswerId, userAnswerId) ||
                other.userAnswerId == userAnswerId) &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                other.isCorrectAnswer == isCorrectAnswer) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionId,
      question,
      correctAnswerId,
      userAnswerId,
      isCorrectAnswer,
      description,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {final String questionId,
      final String question,
      final String correctAnswerId,
      final String? userAnswerId,
      final String? isCorrectAnswer,
      final String description,
      final List<Answer> answers}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get questionId;
  @override
  String get question;
  @override
  String get correctAnswerId;
  @override
  String? get userAnswerId;
  @override
  String? get isCorrectAnswer;
  @override
  String get description;
  @override
  List<Answer> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
// Cognito provided ID.
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get quizId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      String? title,
      String? quizId});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? quizId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$_QuizCopyWith(_$_Quiz value, $Res Function(_$_Quiz) then) =
      __$$_QuizCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      String? title,
      String? quizId});
}

/// @nodoc
class __$$_QuizCopyWithImpl<$Res> extends _$QuizCopyWithImpl<$Res, _$_Quiz>
    implements _$$_QuizCopyWith<$Res> {
  __$$_QuizCopyWithImpl(_$_Quiz _value, $Res Function(_$_Quiz) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? quizId = freezed,
  }) {
    return _then(_$_Quiz(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Quiz implements _Quiz {
  const _$_Quiz(
      {this.id = '', this.name, this.description, this.title, this.quizId});

  factory _$_Quiz.fromJson(Map<String, dynamic> json) => _$$_QuizFromJson(json);

// Cognito provided ID.
  @override
  @JsonKey()
  final String id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? title;
  @override
  final String? quizId;

  @override
  String toString() {
    return 'Quiz(id: $id, name: $name, description: $description, title: $title, quizId: $quizId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quiz &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.quizId, quizId) || other.quizId == quizId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, title, quizId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizCopyWith<_$_Quiz> get copyWith =>
      __$$_QuizCopyWithImpl<_$_Quiz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
      {final String id,
      final String? name,
      final String? description,
      final String? title,
      final String? quizId}) = _$_Quiz;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$_Quiz.fromJson;

  @override // Cognito provided ID.
  String get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get title;
  @override
  String? get quizId;
  @override
  @JsonKey(ignore: true)
  _$$_QuizCopyWith<_$_Quiz> get copyWith => throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  String get answerId => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call({String answerId, String answer});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      answerId: null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$_AnswerCopyWith(_$_Answer value, $Res Function(_$_Answer) then) =
      __$$_AnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String answerId, String answer});
}

/// @nodoc
class __$$_AnswerCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$_Answer>
    implements _$$_AnswerCopyWith<$Res> {
  __$$_AnswerCopyWithImpl(_$_Answer _value, $Res Function(_$_Answer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = null,
    Object? answer = null,
  }) {
    return _then(_$_Answer(
      answerId: null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answer implements _Answer {
  const _$_Answer({this.answerId = '', this.answer = ''});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  @JsonKey()
  final String answerId;
  @override
  @JsonKey()
  final String answer;

  @override
  String toString() {
    return 'Answer(answerId: $answerId, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answer &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answerId, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      __$$_AnswerCopyWithImpl<_$_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer({final String answerId, final String answer}) =
      _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  String get answerId;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAnswer _$UserAnswerFromJson(Map<String, dynamic> json) {
  return _UserAnswer.fromJson(json);
}

/// @nodoc
mixin _$UserAnswer {
  String get questionId => throw _privateConstructorUsedError;
  String? get answerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAnswerCopyWith<UserAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAnswerCopyWith<$Res> {
  factory $UserAnswerCopyWith(
          UserAnswer value, $Res Function(UserAnswer) then) =
      _$UserAnswerCopyWithImpl<$Res, UserAnswer>;
  @useResult
  $Res call({String questionId, String? answerId});
}

/// @nodoc
class _$UserAnswerCopyWithImpl<$Res, $Val extends UserAnswer>
    implements $UserAnswerCopyWith<$Res> {
  _$UserAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerId = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAnswerCopyWith<$Res>
    implements $UserAnswerCopyWith<$Res> {
  factory _$$_UserAnswerCopyWith(
          _$_UserAnswer value, $Res Function(_$_UserAnswer) then) =
      __$$_UserAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String questionId, String? answerId});
}

/// @nodoc
class __$$_UserAnswerCopyWithImpl<$Res>
    extends _$UserAnswerCopyWithImpl<$Res, _$_UserAnswer>
    implements _$$_UserAnswerCopyWith<$Res> {
  __$$_UserAnswerCopyWithImpl(
      _$_UserAnswer _value, $Res Function(_$_UserAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerId = freezed,
  }) {
    return _then(_$_UserAnswer(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAnswer implements _UserAnswer {
  const _$_UserAnswer({this.questionId = '', this.answerId});

  factory _$_UserAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_UserAnswerFromJson(json);

  @override
  @JsonKey()
  final String questionId;
  @override
  final String? answerId;

  @override
  String toString() {
    return 'UserAnswer(questionId: $questionId, answerId: $answerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAnswer &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, answerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAnswerCopyWith<_$_UserAnswer> get copyWith =>
      __$$_UserAnswerCopyWithImpl<_$_UserAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAnswerToJson(
      this,
    );
  }
}

abstract class _UserAnswer implements UserAnswer {
  const factory _UserAnswer({final String questionId, final String? answerId}) =
      _$_UserAnswer;

  factory _UserAnswer.fromJson(Map<String, dynamic> json) =
      _$_UserAnswer.fromJson;

  @override
  String get questionId;
  @override
  String? get answerId;
  @override
  @JsonKey(ignore: true)
  _$$_UserAnswerCopyWith<_$_UserAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  String get id => throw _privateConstructorUsedError;
  String get drugId => throw _privateConstructorUsedError;
  int? get questionCount => throw _privateConstructorUsedError;
  int? get correctAnswerCount => throw _privateConstructorUsedError;
  double? get earnedPoints => throw _privateConstructorUsedError;
  double? get maxPoint => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {String id,
      String drugId,
      int? questionCount,
      int? correctAnswerCount,
      double? earnedPoints,
      double? maxPoint,
      double? percentage});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? drugId = null,
    Object? questionCount = freezed,
    Object? correctAnswerCount = freezed,
    Object? earnedPoints = freezed,
    Object? maxPoint = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      drugId: null == drugId
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
              as String,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswerCount: freezed == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      earnedPoints: freezed == earnedPoints
          ? _value.earnedPoints
          : earnedPoints // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPoint: freezed == maxPoint
          ? _value.maxPoint
          : maxPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$_ResultsCopyWith(
          _$_Results value, $Res Function(_$_Results) then) =
      __$$_ResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String drugId,
      int? questionCount,
      int? correctAnswerCount,
      double? earnedPoints,
      double? maxPoint,
      double? percentage});
}

/// @nodoc
class __$$_ResultsCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$_Results>
    implements _$$_ResultsCopyWith<$Res> {
  __$$_ResultsCopyWithImpl(_$_Results _value, $Res Function(_$_Results) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? drugId = null,
    Object? questionCount = freezed,
    Object? correctAnswerCount = freezed,
    Object? earnedPoints = freezed,
    Object? maxPoint = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_$_Results(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      drugId: null == drugId
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
              as String,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswerCount: freezed == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      earnedPoints: freezed == earnedPoints
          ? _value.earnedPoints
          : earnedPoints // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPoint: freezed == maxPoint
          ? _value.maxPoint
          : maxPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Results implements _Results {
  const _$_Results(
      {this.id = '',
      this.drugId = '',
      this.questionCount,
      this.correctAnswerCount,
      this.earnedPoints,
      this.maxPoint,
      this.percentage});

  factory _$_Results.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String drugId;
  @override
  final int? questionCount;
  @override
  final int? correctAnswerCount;
  @override
  final double? earnedPoints;
  @override
  final double? maxPoint;
  @override
  final double? percentage;

  @override
  String toString() {
    return 'Results(id: $id, drugId: $drugId, questionCount: $questionCount, correctAnswerCount: $correctAnswerCount, earnedPoints: $earnedPoints, maxPoint: $maxPoint, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Results &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.drugId, drugId) || other.drugId == drugId) &&
            (identical(other.questionCount, questionCount) ||
                other.questionCount == questionCount) &&
            (identical(other.correctAnswerCount, correctAnswerCount) ||
                other.correctAnswerCount == correctAnswerCount) &&
            (identical(other.earnedPoints, earnedPoints) ||
                other.earnedPoints == earnedPoints) &&
            (identical(other.maxPoint, maxPoint) ||
                other.maxPoint == maxPoint) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, drugId, questionCount,
      correctAnswerCount, earnedPoints, maxPoint, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      __$$_ResultsCopyWithImpl<_$_Results>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {final String id,
      final String drugId,
      final int? questionCount,
      final int? correctAnswerCount,
      final double? earnedPoints,
      final double? maxPoint,
      final double? percentage}) = _$_Results;

  factory _Results.fromJson(Map<String, dynamic> json) = _$_Results.fromJson;

  @override
  String get id;
  @override
  String get drugId;
  @override
  int? get questionCount;
  @override
  int? get correctAnswerCount;
  @override
  double? get earnedPoints;
  @override
  double? get maxPoint;
  @override
  double? get percentage;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      throw _privateConstructorUsedError;
}
