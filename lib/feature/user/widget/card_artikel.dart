import 'package:flutter/material.dart';
import '../../../config/theme.dart';

class CardArtikel extends StatelessWidget {
  const CardArtikel(
      {super.key, required this.title, this.imgUrl, this.uploadDate = ''});

  final String title;
  final String? imgUrl;
  final String? uploadDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imgUrl ?? 'assets/banner1.png',
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
          ),
          Text(
            'Diupload: $uploadDate',
            style: greyTextStyle.copyWith(fontWeight: regular, fontSize: 12),
          )
        ],
      ),
    );
  }
}
