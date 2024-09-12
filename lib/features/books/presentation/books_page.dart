// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names

import 'package:bilimapp/features/articles/presentation/widgets/search_field.dart';
import 'package:bilimapp/features/books/presentation/widgets/new_books.dart';
import 'package:bilimapp/features/books/presentation/widgets/popular_books_card.dart';
import 'package:bilimapp/features/books/presentation/widgets/recomended_books_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/common_widgets.dart';
import '../../../core/helpers/screen_util.dart';

import '../../../core/injection/injection.dart';

import 'bloc/books_bloc.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final _bloc = getIt<BooksBloc>();
  @override
  void initState() {
    _bloc.add(ListBooksEvent());
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);
    return Scaffold(
        backgroundColor: const Color(0xffF8F9FD),
        body: SafeArea(
          child: BlocBuilder<BooksBloc, BooksState>(
              bloc: _bloc,
              builder: (context, state) {
                //  final BooksModel booksModel =state.listOfBooks[index];
                return SingleChildScrollView(
                    child: Column(children: [
                  const SearchField(
                    hintText: "Search Books",
                  ),
                  state.loading
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height / 2,
                          child: const Center(
                            child: Spinner(),
                          ),
                        )
                      : const SingleChildScrollView(
                          child: Column(
                            children: [
                              RecommendedBooks(),
                              NewBooks(),
                              PopularBooks(),
                            ],
                          ),
                        )
                ]));
              }),
        ));
  }
}






// Expanded(
//                       child: ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: state.listOfBooks.length,
//                           itemBuilder: ((context, index) {
//                             final BooksModel booksModel =
//                                 state.listOfBooks[index];
//                             return InkWell(
//                               onTap: () {},
//                               child: booksModel.booksType == "New Books"
//                                   ?  NewBooksCard(books: booksModel,)
//                                   : booksModel.booksType == "Popular Books"
//                                       ? const PopularBooksCard()
//                                       : const RecomendedBooksCard(),
//                             );
//                           })))