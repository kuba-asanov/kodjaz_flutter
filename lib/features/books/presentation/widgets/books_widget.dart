// ignore_for_file: sized_box_for_whitespace

// import 'package:bilimapp/core/helpers/colors.dart';
import 'package:bilimapp/core/constants/app/app_constants.dart';
import 'package:bilimapp/core/helpers/colors.dart';
import 'package:bilimapp/core/helpers/text_styles.dart';
import 'package:bilimapp/core/navigation/auto_route.gr.dart';
import 'package:bilimapp/features/books/data/books_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
// import 'package:bilimapp/features/books/data/models/books_model.dart';
// import 'package:bilimapp/core/navigation/auto_route.gr.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/screen_util.dart';
import '../../../../core/injection/injection.dart';
import '../../../../core/navigation/navigation.dart';
import '../../data/models/books_model.dart';

import '../bloc/books_bloc.dart';
// import '../../../../core/navigation/navigation.dart';

class BooksWidget extends StatelessWidget {
  final String text;
  const BooksWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    MyScreenUtil.init(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.r, top: 8.r, bottom: 5.r),
          child: Text(text, style: KodjazTextStyle.fS18FW800),
        ),
        BooksList(),
      ],
    );
  }
}

class BooksList extends StatelessWidget {
  BooksList({super.key});
  final BooksBloc booksBloc = getIt<BooksBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksBloc, BooksState>(
      bloc: booksBloc,
      builder: (context, state) {
        return Container(
          height: 330.h,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.65),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: booksData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    final BooksModel booksModel = booksData[index];
                    Navigation.router
                        .push(BooksDetailRoute(booksModel: booksModel));
                  },
                  child: BooksCard(
                    index: index,
                  ));
            },
          ),
        );
      },
    );
  }
}

class BooksCard extends StatelessWidget {
  final int index;
  const BooksCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 10.r),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110.h,
            width: 100.w,
            child: Card(
                elevation: 10,
                color: KodJazColors.White,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: CachedNetworkImage(
                  imageUrl: booksData[index].imageUrl!.imageUrl == null
                      ? ApplicationConstants.imageNotFound
                      : booksData[index].imageUrl!.imageUrl.toString(),
                  errorWidget: (context, string, _) {
                    return const Icon(Icons.error);
                  },
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.r,
                    bottom: 2.r,
                  ),
                  child: Text(
                    booksData[index].title,
                    style: KodjazTextStyle.fS12FW500,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Text(
                  booksData[index].author,
                  style: KodjazTextStyle.fS12FW400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
