import 'package:bilimapp/features/books/presentation/widgets/books_widget.dart';
import 'package:flutter/material.dart';

class RecommendedBooks extends StatelessWidget {
  const RecommendedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return const BooksWidget(text: "Recommended");
  }
}