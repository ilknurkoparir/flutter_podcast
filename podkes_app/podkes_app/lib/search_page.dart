import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podkes_app/detay_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _gelenSayi = 0;

  late List<Widget> _icerikler;
  @override
  void initState() {
    super.initState();
    _icerikler = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1f1d2b),
        elevation: 0,
        title: Text(
          "Podkes",
          style: GoogleFonts.getFont(
            'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 0.8888888889,
            letterSpacing: 0.3000000119,
            color: const Color(0xffffffff),
          ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.clear_all),
        actions: const [
          Icon(Icons.notification_add),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: const SearchBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff1f1d2b),
        currentIndex: _gelenSayi,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_play_next_outlined),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (int butonPozisyon) {
          setState(() {
            _gelenSayi = butonPozisyon;
          });
        },
      ),
    );
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff1f1d2b),
        child: Container(
          alignment: Alignment.center,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xff252836),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white.withOpacity(0.6),
                        ),
                        border: const OutlineInputBorder(
                         
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        icerikGir(
                          context,
                          "The missing 96 percent of the universe",
                          "Claire Malone",
                          "images/1.png",
                          Colors.pink,
                        ),
                        icerikGir(
                          context,
                          "How Dolly Parton led me to an epiphany",
                          "Abumenyang",
                          "images/2.png",
                          Colors.purple,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        icerikGir(
                          context,
                          "The missing 96 percent of the universe",
                          "Tir McDohl",
                          "images/person3.png",
                          Colors.blue,
                        ),
                        icerikGir(
                          context,
                          "Ngobam with Denny Caknan",
                          "Denny Kulon",
                          "images/person4.png",
                          Colors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget icerikGir(BuildContext context, String metin, String isim,
      String resimYolu, Color renk) {
    double containerWidth = MediaQuery.of(context).size.width / 2 - 20;

    return Padding(
      padding: const EdgeInsets.all(2),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetayPage(
                      isim: isim,
                      resimYolu: resimYolu,
                      metin: metin,
                      renk: renk)));
        },
        child: SizedBox(
          height: 200,
          width: containerWidth,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
