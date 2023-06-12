import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

// import 'package:page_flip/page_flip.dart';
class PdfPage extends StatefulWidget {
  const PdfPage({
    super.key,
  });

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  final String pdfAssetPath = 'assets/pdf/the-alchemist.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Page'),
      ),
      body: PDF(
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageFling: true,
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
      ).fromAsset(pdfAssetPath),
    );
  }
}
