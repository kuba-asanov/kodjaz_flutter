part of 'books_bloc.dart';

@freezed
class BooksState with _$BooksState {
  factory BooksState({
    @Default(false) bool loading,
    @Default([]) List<BooksModel> listOfBooks,
    String? error,
  }) = _BooksState;
}
