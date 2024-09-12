// ignore_for_file: avoid_unnecessary_containers

import 'dart:io';
import 'dart:ui';

import 'package:bilimapp/core/constants/app/app_constants.dart';
import 'package:bilimapp/core/helpers/colors.dart';
import 'package:bilimapp/core/helpers/text_styles.dart';
import 'package:bilimapp/core/navigation/auto_route.gr.dart';

import 'package:bilimapp/features/books/presentation/widgets/custom_icon_container.dart';
import 'package:bilimapp/features/books/presentation/widgets/sliver_custom_container.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/navigation/navigation.dart';
import '../data/models/books_model.dart';

class BooksDetailPage extends StatelessWidget {
  final BooksModel booksModel;
  const BooksDetailPage({
    super.key,
    required this.booksModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton.extended(
            heroTag: 'btn1',
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigation.router.push(const PdfRoute());
            },
            backgroundColor: KodJazColors.PrimaryColor,
            icon: const Icon(
              Icons.menu_book_sharp,
              color: KodJazColors.White,
            ),
            label: Text("Read", style: KodjazTextStyle.fS15FW700),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: () {
                    shareBook(booksModel.title,
                        booksModel.imageUrl!.imageUrl.toString());
                  },
                  icon: const CustomIconContainer(
                    icon: Icons.share,
                  ))
            ],
            leading: IconButton(
              onPressed: () {
                Navigation.router.pop();
              },
              icon: const CustomIconContainer(icon: Icons.arrow_back_ios_new),
            ),
            expandedHeight: 250.h,
            flexibleSpace: Stack(
              children: [
                FlexibleSpaceBar(
                    background: CachedNetworkImage(
                  imageUrl: booksModel.imageUrl == null
                      ? ApplicationConstants.imageNotFound
                      : booksModel.imageUrl!.imageUrl.toString(),
                  errorWidget: (context, string, _) {
                    return const Icon(Icons.error);
                  },
                  fit: BoxFit.cover,
                )),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
                Positioned(
                  bottom: -1,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.r),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 195.h,
                    width: 165.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: booksModel.imageUrl == null
                          ? ApplicationConstants.imageNotFound
                          : booksModel.imageUrl!.imageUrl.toString(),
                      errorWidget: (context, string, _) {
                        return const Icon(Icons.error);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) => SliverCustomContainer(booksModel: booksModel)),
          ),
        ],
      ),
    );
  }
  Future<void> shareBook(String bookTitle, String bookUrl) async {
    const String appUrl =
        'https://play.google.com/store/apps/details?id=kg.bilimapp.app';
    final isAppInstalled = await canLaunchUrl(Uri.parse('kg.bilimapp.app'));
    if (isAppInstalled) {
      await launchUrl(
          Uri.parse('kg.bilimapp.app://share?title=$bookTitle&url=$bookUrl'));
    } else {
      if (Platform.isIOS || Platform.isAndroid) {
        await launchUrl(Uri.parse(appUrl));
      } else {
        throw 'Platform not supported';
      }
      await Share.share(
        '$bookTitle: $appUrl',
      );
    }
  }
}
