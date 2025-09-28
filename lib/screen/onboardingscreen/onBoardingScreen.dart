import 'package:flutter/material.dart';
import 'package:whatsapp/screen/login/loginScreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/boarding.png',),
            SizedBox(height: 20,),
            UiHelper.CustomText(text: 'Welcome To WhatsApp', height: 20, color: Color(0xff000000)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'Read Out', height: 14),
                UiHelper.CustomText(text: ' Privacy Policy', height: 14, color: Color(0xff0C42CC)),
                UiHelper.CustomText(text: " Tap ''Agree and Continue''", height: 14, ),

              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'To accept the', height: 14, ),
                UiHelper.CustomText(text: ' Terms & Services', height: 14,color: Color(0xff0C42CC)),
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomeButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginscreen()));
      }, buttonName: 'Agree and Continue'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
