import 'package:divar/constants/constants.dart';

import 'package:divar/screens/information_screen.dart';
import 'package:divar/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 101,
              child: Image.asset(
                "images/bgline.png",
                fit: BoxFit.cover,
              ),
            ),
            mainwidget(context),
          ],
        ),
      ),
    );
  }

  Widget mainwidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 76),
          child: Image(
            image: AssetImage("images/home.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "آگهی شماست",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset("images/logo.png"),
              SizedBox(
                width: 8,
              ),
              Text(
                "اینجا محل",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Text(
          "در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید",
          style: TextStyle(
            fontFamily: "shabnam",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: customdarkgrey,
          ),
        ),
        Text(
          "و یا اگر دنبال ملک با مشخصات دلخواه خود هستید",
          style: TextStyle(
            fontFamily: "shabnam",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: customdarkgrey,
          ),
        ),
        Text(
          "آویز ها را ببینید",
          style: TextStyle(
            fontFamily: "shabnam",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: customdarkgrey,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: customgrey,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                width: 16,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: customred,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: customgrey,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: customred,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  side: BorderSide(
                    color: customred,
                    width: 1,
                  ),
                  minimumSize: Size(159, 40),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SigninScreen();
                  }));
                },
                child: Text(
                  "ورود",
                  style: TextStyle(
                    fontFamily: "shabnam",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(159, 40),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return InformationScreen();
                  }));
                },
                child: Text("ثبت نام"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
