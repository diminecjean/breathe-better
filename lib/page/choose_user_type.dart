import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import 'package:breathe_better/components/text_bubble.dart';

class ChooseUserType extends StatelessWidget{
  const ChooseUserType({super.key});

  @override
  Widget build(BuildContext context){
    return OnBoardingSlider(
      headerBackgroundColor: Colors.transparent,
      background: [
        Image.asset(
          'static/images/Thinking face-rafiki.png',
          height: 350,
        ),
      ],
      centerBackground: true,
      totalPage: 1,
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: Colors.transparent
      ),
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                  'Before we start,',
                  textAlign: TextAlign.left,
                  style:
                    GoogleFonts.openSans(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    )
              ),
              SizedBox(
                height: 280,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15.0), 
                child: Text(
                        'Are you a smoker or an acquaintance?',
                        textAlign: TextAlign.center,
                        style:
                          GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600
                            )
                          ),
                )
              ),

              // Navigate to sign up page for smokers
              GestureDetector(
                child:
                  TextBubble(
                    inputText: 'I am a smoker.', 
                    bubbleColour: Color.fromARGB(255,34,84,29), 
                    borderRadius: 30, 
                    textFontSize: 23,
                    textColour: Colors.white,
                    textBubbleAlign: TextAlign.center,
                  ),
                  onTap: () => Navigator.pushNamed(context, "/signup"),
              ),
              
              // Navigate to sign up page for acquaintance
              TextBubble(
                inputText: 'I am an acquaintance.', 
                bubbleColour: Color.fromARGB(255,210, 230, 208), 
                borderRadius: 30, 
                textFontSize: 23,
                textColour: Colors.black,
                textBubbleAlign: TextAlign.center,
              )
            ]
        )
        )
      ],
    );
  }
}