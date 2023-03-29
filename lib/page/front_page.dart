// import 'package:breathe_better/config/style/style.dart';
// import 'package:breathe_better/components/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/config_color.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:breathe_better/page/signup_page.dart';
import 'package:breathe_better/page/login_page.dart';
import 'package:breathe_better/components/text_bubble.dart';



class FrontPage extends StatelessWidget {
  double textBubbleFontSize = 17.0;

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Register',
      onFinish: () {
        Navigator.pushNamed(
          context,
          "/signup"
        );
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: ConfigColor.getMaterialColor(Color(0xFF22541D)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 15,
          color: ConfigColor.getMaterialColor(Color(0xFF22541D)),
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color: ConfigColor.getMaterialColor(Color(0xFF22541D)),
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.pushNamed(
          context,
          "/login"
        );
      },
      controllerColor: ConfigColor.getMaterialColor(Color(0xFF22541D)),
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      centerBackground: true,
      background: [
        Image.asset(
          'static/images/Breathe Better Logo.png',
          scale: 2,
        ),
        Image.asset(
          'static/images/Lungs-Rafiki.png',
          height: 180,
        ),
        Image.asset(
          'static/images/Enthusiastic-rafiki.png',
          height: 450,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        // Page 1 - Breathe Better
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 350,
              ),
              Text(
                'Welcome to',
                textAlign: TextAlign.center, 
                style: 
                  GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color:  Color(0xff095d39),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Breathe Better',
                textAlign: TextAlign.center, 
                style: 
                  GoogleFonts.lato(
                    textStyle: TextStyle(
                      color:  Color(0xff095d39),
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                    ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Live Longer',
                textAlign: TextAlign.center, 
                style: 
                  GoogleFonts.abel(
                    textStyle: TextStyle(
                      color:  Color(0xff001029),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
            ],
          ),
        ),

        // Page 2 -Intro
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 185,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                        'Why Breathe Better?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ConfigColor.getMaterialColor(Color(0xFF22541D)),
                          fontSize: 28.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
              
              // Point 1 
              TextBubble(
                inputText: 'Get personalized smoking quitting plans', 
                bubbleColour: Color.fromARGB(255, 223, 223, 223),
                borderRadius: 30,
                textFontSize: textBubbleFontSize,
              ),
              // Point 2
              TextBubble(
                inputText: 'Receive Guidance From Our Breathe Coach', 
                bubbleColour: Color.fromARGB(255, 223, 223, 223),
                borderRadius: 30,
                textFontSize: textBubbleFontSize,
              ),
              // Point 3
              TextBubble(
                inputText: 'Get Support from ex-smokers and current Breathers', 
                bubbleColour: Color.fromARGB(255, 223, 223, 223),
                borderRadius: 30,
                textFontSize: textBubbleFontSize,
              ),
              // Point 4
              TextBubble(
                inputText: 'And many more!', 
                bubbleColour: Color.fromARGB(255, 223, 223, 223),
                borderRadius: 30,
                textFontSize: textBubbleFontSize,
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                        "Let's Get Started!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ],
          ),
        ),

        // Page 3 - Register
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              Text(
                'Start your journey now!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ConfigColor.getMaterialColor(Color(0xFF22541D)),
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Take your first step to reach closer to your smoke-free lifestyle.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// class FrontPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       home: OnBoardingSlider(
//         headerBackgroundColor: Colors.white,
//         finishButtonText: 'Register',
//         finishButtonStyle: FinishButtonStyle(
//         backgroundColor: ConfigColor.getMaterialColor(Color(0xFF22541D)),
//         ),
//         // skipTextButton: Text('Skip'),
//         trailing: Text('Login'),
//         background: [
//           Image.asset('static/images/Breathe Better Logo.png', scale: 2,),
//           Image.asset('static/images/Lungs-Rafiki.png', scale: 5,),
//           Image.asset('static/images/Lungs-Rafiki.png', scale: 5,),
//         ],
//         centerBackground: true,
//         totalPage: 3,
//         speed: 1.8,

//         pageBodies: [
//           // Page 1
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 480,
//                 ),
//                 Text('Welcome to'),
//                 Text('Breathe Better')
//               ],
//             ),
//           ),

//           // Page 2
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 480,
//                 ),
//                 Text('Description Text 1'),
//               ],
//             ),
//           ),

//           // Page 3 - Register/Login
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 480,
//                 ),
//                 Text('Description Text 2'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }







// class FrontPage extends StatefulWidget {
//   const FrontPage({super.key});

//   @override
//   State<FrontPage> createState() => _FrontPageState();
// }

// class _FrontPageState extends State<FrontPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("Breathe Better", style: Style.pageName()),
//       //   automaticallyImplyLeading: false
//       // ),
//       body: GestureDetector(
//           behavior: HitTestBehavior.opaque,
//           onTap: () => Navigator.pushNamed(context, "/intropage"),
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.only(top: 125.0),
//                   child: Center(
//                     child: Container(
//                         // child: Center (child: Text('Breathe Better')), 
//                         // HALPPPP
//                         width: 400,
//                         height: 200,
//                         child: Image(image: AssetImage('static/images/Breathe Better Logo.png'), width: 250, ),
//                     ),
//                   ),
//                 ),

//                 Container(
//                   margin: EdgeInsets.only(top: 30),
//                   height: 50,
//                   width: 180,
//                   child: Center (
//                     child: Text(
//                       'Welcome to',
//                       style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 80,
//                 ),
//                 GestureDetector(
//                   child: Text("Nice to meet you"), 
//                   onTap: () => Navigator.pushNamed(context, "/signup"),
//                   ),
//               ],
//             ),
//           ),
//       ),
//     );
//   }
// }
