import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetayPage extends StatelessWidget {
  final String isim;
  final String resimYolu;
  final String metin;
  final Color renk;

  const DetayPage(
      {super.key,
      required this.isim,
      required this.resimYolu,
      required this.metin,
      required this.renk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1f1d2b),
        elevation: 0,
        title: const Text(
          'Now Playing',
        ),
      ),
      body: Container(
        color: const Color(0xff1f1d2b),
        child: ListView(children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 500,
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: renk,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 4.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(resimYolu),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        metin,
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          height: 1.2307692308,
                          letterSpacing: 0.3000000119,
                          color: const Color(0xffffffff),
                        ),
                      ),
                      const SizedBox(height: 2.0),
                      Text(
                        isim,
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 1.6,
                          letterSpacing: 0.3000000119,
                          color: const Color(0xffcccccc),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "24:50",
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.6,
                              letterSpacing: 0.3000000119,
                              color: const Color(0xffcccccc),
                            ),
                          ),
                          Text(
                            "34:00",
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.6,
                              letterSpacing: 0.3000000119,
                              color: const Color(0xffcccccc),
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Image.asset("images/playy.png"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
