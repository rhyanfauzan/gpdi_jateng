// ignore_for_file: library_private_types_in_public_api, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:gpdi_jateng/config/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents ArtikelDetailPage for Navigation
class ArtikelDetailPage extends StatefulWidget {
  const ArtikelDetailPage({super.key, required this.title});

  final String title;

  @override
  _ArtikelDetailPage createState() => _ArtikelDetailPage(title);
}

class _ArtikelDetailPage extends State<ArtikelDetailPage> {
  _ArtikelDetailPage(this.title);

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  final String title;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.bookmark_outline,
                color: primaryColor,
                semanticLabel: 'Bookmark',
              ),
              onPressed: () {
                _pdfViewerKey.currentState?.openBookmarkView();
              },
            ),
          ],
        ),
        body:
            // SfPdfViewer.network(
            //   'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
            //   key: _pdfViewerKey,
            // ),
            SfPdfViewer.asset(
          'assets/pdf/artikel1.pdf',
          key: _pdfViewerKey,
        ));
  }
}
