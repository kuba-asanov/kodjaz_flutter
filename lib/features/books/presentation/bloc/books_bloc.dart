import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/books_model.dart';
// import '../repository/books_repository.dart';

part 'books_event.dart';
part 'books_state.dart';
part 'books_bloc.freezed.dart';

@LazySingleton()
class BooksBloc extends Bloc<BooksEvent, BooksState> {
  // final BooksRepository _booksRepository;
  BooksBloc() : super(BooksState()) {
    on<BooksEvent>((event, emit) {
    //   try {
    //     emit(state.copyWith(loading: true));
    //     final List<BooksModel> booksModel =_booksRepository.listOfBooks();

    //     emit(state.copyWith(listOfBooks: booksModel, loading: false));
    //   } catch (e,stackTrace) {
    //      print("$e, $stackTrace");
    //     emit(state.copyWith(loading: false, error: e.toString()));
    //   }
    });
    }
}
