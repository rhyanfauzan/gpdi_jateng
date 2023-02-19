import 'package:flutter/material.dart';
import 'package:gpdi_jateng/config/app_asset.dart';
import 'package:gpdi_jateng/config/theme.dart';
import 'package:gpdi_jateng/feature/user/page/home/artikel/artikel.dart';
import 'package:gpdi_jateng/feature/user/widget/carousel_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [const Header(), CarouselBanner(), const Menus()],
      ),
    );
  }
}

class Menus extends StatelessWidget {
  const Menus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ArtikelPage()),
                  );
                },
                child: Image.asset(
                  AppAsset.icartikel,
                  height: 90,
                ),
              ),
              Image.asset(
                AppAsset.icberita,
                height: 90,
              ),
              Image.asset(
                AppAsset.icebook,
                height: 90,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                AppAsset.icgaleri,
                height: 90,
              ),
              Image.asset(
                AppAsset.ickhotbah,
                height: 90,
              ),
              Image.asset(
                AppAsset.icliputan,
                height: 90,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(250),
            child: Image.asset(
              AppAsset.avatar,
              width: 60,
              height: 60,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shalom,",
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              Text(
                "Keluarga Allah",
                style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold),
              ),
            ],
          ),
          const Spacer(),
          Icon(
            Icons.qr_code_scanner_outlined,
            color: whiteColor,
            size: 25,
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications_outlined,
            color: whiteColor,
            size: 25,
          ),
        ],
      ),
    );
  }
}
