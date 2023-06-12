
import 'package:bilimapp/features/books/presentation/widgets/books_widget.dart';
import 'package:flutter/material.dart';

class PopularBooks extends StatelessWidget {
  const PopularBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return const BooksWidget(text: "Selected for you");
  }
}