import 'package:flutter/material.dart';
import 'package:keuanganku/app/app_colors.dart';
import 'package:keuanganku/app/widgets/k_app_bar/k_app_bar.dart';
import 'package:keuanganku/app/widgets/k_leadingbutton_back_ios/k_leadingbutton_back_iosStyle.dart';
import 'package:keuanganku/app_info.dart';
import 'package:keuanganku/k_typedef.dart';
import 'package:keuanganku/util/dummy.dart';
import 'package:keuanganku/util/font_style.dart';

const String tentangAplikasi = """
KeuanganKu merupakan sebuah platform inovatif yang dikembangkan untuk membantu pengguna dalam mengelola keuangan secara lebih terstruktur dan efisien. Dilengkapi dengan berbagai fitur unggulan, platform ini bertujuan untuk mempermudah proses perencanaan, pemantauan, hingga optimalisasi seluruh aspek keuangan pribadi. 

Proyek ini merupakan bagian dari tugas akhir yang disusun dalam rangka penyelesaian studi di Universitas Islam Nusantara.
""";

class TentangAplikasi extends StatefulWidget {
  const TentangAplikasi({super.key});

  @override
  State<TentangAplikasi> createState() => _TentangAplikasiState();
}

class _TentangAplikasiState extends State<TentangAplikasi> {
  KApplicationBar appBar(BuildContext context) {
    return KAppBar(
      title: "",
      backgroundColor: Colors.white,
      fontColor: KColors.fontPrimaryBlack,
      leading: KLeadingBackIOS(
        onTap: () {
          Navigator.pop(context);
        },
        color: KColors.fontPrimaryBlack,
      ),
    ).getWidget();
  }

  Widget tentang() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dummyHeight(),
        Text(
          "Tentang",
          style: kFontStyle(fontSize: 18, family: "QuickSand_Medium"),
        ),
        Text(
          "KeuanganKu ${ApplicationInfo.stringAppVersion}",
          style: kFontStyle(fontSize: 26),
        ),
        dummyHeight(height: 10),
        Text(
          tentangAplikasi,
          style: kFontStyle(fontSize: 14, family: "QuickSand_Medium"),
        ),
      ],
    );
  }

  Widget pengembang() {
    Widget buildProfilePengembang(
        {required String nama, required String tugas}) {
      return Row(
        children: [
          const Icon(
            Icons.person_2_rounded,
            color: KColors.fontPrimaryBlack,
            size: 40,
          ),
          dummyWidth(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: kFontStyle(fontSize: 14),
              ),
              Text(
                tugas,
                style: kFontStyle(fontSize: 14, family: "QuickSand_Medium"),
              )
            ],
          )
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dummyHeight(),
        Text(
          "Pengembang",
          style: kFontStyle(
            fontSize: 18,
          ),
        ),
        dummyHeight(height: 12.5),
        buildProfilePengembang(
            nama: "Rizal Junaedi", tugas: "UI/UX | Front-End | Back-End"),
        dummyHeight(height: 25),
      ],
    );
  }

  Widget lisensi() {
    const lisensi =
        """Aplikasi ini merupakan hasil pengembangan pribadi yang dibuat untuk membantu pengelolaan keuangan secara praktis dan efisien. Aplikasi ini dapat digunakan secara bebas oleh siapa saja dan dirancang agar mudah diakses, dimodifikasi, serta disesuaikan dengan kebutuhan pengguna.""";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dummyHeight(),
        Text(
          "Lisensi",
          style: kFontStyle(
            fontSize: 18,
          ),
        ),
        dummyHeight(height: 12.5),
        Text(
          lisensi,
          style: kFontStyle(fontSize: 14, family: "QuickSand_Medium"),
        ),
        dummyHeight(height: 25),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const divider = Divider();
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              tentang(),
              divider,
              pengembang(),
              divider,
              lisensi(),
              divider,
              makeCenterWithRow(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Akhir Halaman",
                  style: kFontStyle(fontSize: 12, color: Colors.black45),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
