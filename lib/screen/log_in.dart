import 'package:flutter/material.dart';
import 'package:trafic_ui/profile/first_name.dart';

import '../size_config.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:  Color(0xFFFBFDFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              height: getProportionateScreenHeight(200),
              width: getProportionateScreenWidth(250),
            ),
            Text('Atmanirbhar Ahmedabad', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: "WorkSans"),),
            SizedBox(height: getProportionateScreenWidth(50),),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstName()));
              },
              child: Image.asset(
                "assets/images/facebook_btn.png",
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(300),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(50),),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstName())),
              child: Image.asset(
                "assets/images/google_btn.png",
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(300),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(20),),
            Text('Use Mobile'),

          ],
        ),
      ),
    );
  }
}
