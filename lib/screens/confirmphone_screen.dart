import 'package:divar/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 76, right: 16, bottom: 16),
              child: Text(
                "تایید شماره موبایل",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 32),
              child: Text(
                "کد ورود پیامک شده را وارد کنید",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[500],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 74,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "*",
                      hintStyle: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 74,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "*",
                      hintStyle: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 74,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "*",
                      hintStyle: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 74,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "*",
                      hintStyle: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ارسال مجدد کد",
                    style: TextStyle(
                      fontFamily: "shbanam",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500],
                    ),
                  ),
                  Text(" 00:45"),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
                child: Text("تایید ورود"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
