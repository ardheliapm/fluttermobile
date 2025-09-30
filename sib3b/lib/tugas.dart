import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LyricsPage extends StatelessWidget {
  final String lyrics = '''
All my favorite songs are from 2018
We flew around the world with our small-town dreams

You're a superstar and you wear it so well
But nothin' like you in my hoodie double XL

Bloodstream full of desert lightnin'
Thank God I'm not drivin'
A blur the whole way home

I still remember, I will forever
Backseat secrets we won't ever tell, I miss you double XL
Miss Americana and all my friends love ya
Back patio at the Bowery Hotel, I miss you double XL

You've been goin' out in the glitter and glow
Hollywood fades and it's startin' to show
I'm barely hangin' on and I'm lookin' for help
Every night without you hurtin' double XL
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade900, Colors.deepPurple, Colors.pinkAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Judul lagu
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "XXL - LANY",
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Lirik dengan card transparan
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3), // transparan
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      lyrics,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        height: 1.6,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.right, // rata kanan
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
