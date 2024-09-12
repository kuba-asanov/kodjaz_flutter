part of 'books_bloc.dart';

abstract class BooksEvent {}

class ListBooksEvent extends BooksEvent {}

class GetBooksEvent extends BooksEvent {
  final String id;

  GetBooksEvent(this.id);
}
