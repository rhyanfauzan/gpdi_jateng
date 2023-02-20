import 'package:flutter/material.dart';
import 'package:gpdi_jateng/feature/user/page/home/artikel/artikel_detail.page.dart';
import '../../../widget/card_artikel.dart';

class ArtikelsPage extends StatelessWidget {
  const ArtikelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artikel Rohani'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ArtikelDetailPage(
                            title: 'Komitmen Hidup Berjamaat',
                          )),
                );
              },
              child: const CardArtikel(
                title: 'Komitmen Hidup Berjamaat',
                imgUrl: 'assets/banner2.jpg',
                uploadDate: '20 Feb 2023',
              ));
        },
      ),
    );
  }
}
