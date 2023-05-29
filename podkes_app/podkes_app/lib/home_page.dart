import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0x19ffffff)),
            color: const Color(0xff1f1d2b),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(27.5, 48, 32.5, 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(4, 0, 0, 36),
                      width: 240,
                      height: 317,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        child: Image.asset(
                          "images/home.png",
                          width: 240,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 28),
                      child: Text(
                        'Podkes',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          height: 0.4444444444,
                          letterSpacing: 0.3000000119,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                        constraints: const BoxConstraints(
                          maxWidth: 315,
                        ),
                        child: Text(
                          'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            height: 1.2307692308,
                            letterSpacing: 0.5,
                            color: const Color(0xffc4c4c4),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(133.5, 0, 128.5, 0),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0x7f7b8084),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0x7f7b8084),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0x7f7b8084),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/searchPage');
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff1f1d2b),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
