// ignore_for_file: avoid_unnecessary_containers

import 'package:bilimapp/core/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/text_styles.dart';
import '../../data/models/books_model.dart';

class SliverCustomContainer extends StatelessWidget {
  final BooksModel booksModel;
  const SliverCustomContainer({super.key, required this.booksModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 12.r, right: 12.r),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.r, bottom: 5.r),
                  child: Text(
                    booksModel.title,
                    style: KodjazTextStyle.fS16FW700,
                  ),
                ),
                Text(
                  booksModel.author,
                  style: KodjazTextStyle.fS13FW400,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60.h,
            child: Padding(
              padding: EdgeInsets.only(top: 15.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Rating',
                        style: KodjazTextStyle.fS15FW400,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        booksModel.rating,
                        style: KodjazTextStyle.fS17FW600,
                      )
                    ],
                  ),
                  const VerticalDivider(
                    color: KodJazColors.black,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Text("Pages", style: KodjazTextStyle.fS15FW400),
                      SizedBox(height: 5.h),
                      Text(
                        booksModel.booksPage,
                        style: KodjazTextStyle.fS17FW600,
                      )
                    ],
                  ),
                  const VerticalDivider(
                    color: KodJazColors.black,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Text("The Year", style: KodjazTextStyle.fS15FW400),
                      SizedBox(height: 5.h),
                      Text(
                        booksModel.publishedYear,
                        style: KodjazTextStyle.fS17FW600,
                      )
                    ],
                  ),
                  const VerticalDivider(
                    color: KodJazColors.black,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Text(
                        "Reviews",
                        style: KodjazTextStyle.fS15FW400,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        booksModel.reviews,
                        style: KodjazTextStyle.fS17FW600,
                      )
                    ],
                  ),
                  const VerticalDivider(
                    color: KodJazColors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.r, bottom: 10.r),
            child: Text('About the book', style: KodjazTextStyle.fS18FW600),
          ),
          Text(booksModel.description.first.data.toString(),
              style: KodjazTextStyle.fS13FW400),
          SizedBox(height: 3.h),
        ]),
      ),
    );
  }

  }
