import 'package:bilimapp/features/books/presentation/widgets/books_widget.dart';
import 'package:flutter/material.dart';



class NewBooks extends StatelessWidget {
  
  const NewBooks({super.key, });

  @override
  Widget build(BuildContext context) {
    return const BooksWidget(text: "New Books");
  }
}
