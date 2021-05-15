import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/logo_alt.png')),
                  SizedBox(width: 16),
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text('Jurnalitis',
                        style: GoogleFonts.robotoSlab(
                          fontSize: 64,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 32),
              FutureBuilder(
                future: Future.delayed(Duration(seconds: 2)),
                builder: (_, s) {
                  if (s.connectionState == ConnectionState.done) {
                    return DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Agne',
                      ),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TypewriterAnimatedText(
                              'Website sedang dalam proses pengembangan',
                              textStyle: GoogleFonts.robotoMono(
                                color: Colors.grey[700],
                                fontSize: 18,
                              ),
                              cursor: '',
                              curve: Curves.easeOut),
                        ],
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ],
          ),
          Positioned(
            bottom: 16,
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.youtube,
                      color: Colors.grey[800],
                    ),
                    onPressed: () => launch(
                        'https://www.youtube.com/channel/UCF3v8aVFyJQcoclRfjZOjgw')),
                SizedBox(
                  width: 8,
                ),
                IconButton(
                    icon:
                        Icon(FontAwesomeIcons.github, color: Colors.grey[800]),
                    onPressed: () => launch('https://github.com/jurnalitis')),
                SizedBox(
                  width: 8,
                ),
                IconButton(
                    icon:
                        Icon(FontAwesomeIcons.twitter, color: Colors.grey[800]),
                    onPressed: () => launch('https://twitter.com/jurnalitis')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
