import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String selectedCounty="Bangladesh";

  List<String> countries=["Bangladesh","India","Pakistan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: UiHelper.CustomText(text: 'Enter your Phone Number',
                height: 20, color: Color(0xff00A884),
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30,),
          UiHelper.CustomText(text: 'WhatsApp Will need to verify you phone ', height: 16),
          SizedBox(height: 5,),
          UiHelper.CustomText(text: 'number. Carrier charge mey apply ', height: 16),
          SizedBox(height: 5,),
          UiHelper.CustomText(text: ' Whats My number?', height: 16,color: Color(0xff00A884)),

          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(items: countries.map((String countries){
              return DropdownMenuItem(child: Text(countries.toString()),value: countries,);
            } ).toList(), onChanged: (value){
              setState(() {
                selectedCounty=value!;
              });
            },
              value: selectedCounty,
              decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff00a884)),
              ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff00a884)),
                )
            ),
            ),
          )


        ],
      ),

    );
  }
}
