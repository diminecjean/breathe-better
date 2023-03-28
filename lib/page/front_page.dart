// import 'package:breathe_better/config/style/style.dart';
// import 'package:breathe_better/components/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import '../config/config_color.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';


class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        finishButtonStyle: FinishButtonStyle(
        backgroundColor: Colors.black,
        ),
        skipTextButton: Text('Skip'),
        trailing: Text('Login'),
        background: [
          Image.asset('static/images/Lungs-Rafiki.png', scale: 5,),
          Image.asset('static/images/Lungs-Rafiki.png', scale: 5,),
        ],
        centerBackground: true,
        totalPage: 2,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 2'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







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
