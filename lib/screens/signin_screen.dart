import 'package:divar/constants/constants.dart';
import 'package:divar/screens/confirmphone_screen.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 76, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("images/logo.png"),
                  Text(
                    "ورود به",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 32, right: 16),
              child: Text(
                "!خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: customdarkgrey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "شماره موبایل",
                      hintStyle: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffD0D5DD),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ConfirmScreen();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "مرحله بعد",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ثبت نام ",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: customred,
                    ),
                  ),
                  Text(
                    "تا حالا ثبت نام کردی؟",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
