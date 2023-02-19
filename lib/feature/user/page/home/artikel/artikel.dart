// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:gpdi_jateng/config/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents ArtikelPage for Navigation
class ArtikelPage extends StatefulWidget {
  const ArtikelPage({super.key});

  @override
  _ArtikelPage createState() => _ArtikelPage();
}

class _ArtikelPage extends State<ArtikelPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artikel'),
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
      body: SfPdfViewer.network(
        'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
