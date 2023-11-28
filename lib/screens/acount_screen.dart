// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AcountScreen extends StatelessWidget {
  AcountScreen({super.key});
  var title = [
    "آگهی های من",
    "پرداخت های من",
    "بازدید های اخیر",
    "ذخیره شده ها",
    "تنظیمات",
    "پشتیبانی و قوانین",
    "درباره آویز"
  ];
  var photo = [
    "note2",
    "card",
    "eye",
    "saves",
    "setting",
    "question",
    "infocircle"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/avizmanlogo.png"),
            SizedBox(
              width: 5,
            ),
            Image.asset("images/logo1.png")
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: searchBox(),
          ),
          SliverToBoxAdapter(
            child: acountTitle(),
          ),
          SliverToBoxAdapter(
            child: acountInfo(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Divider(
                height: 1,
                color: Colors.grey.shade100,
              ),
            ),
          ),
          listOfOption(),
          SliverToBoxAdapter(
            child: version(),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 120),
          ),
        ],
      ),
    );
  }

  Widget version() {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          Text(
            "نسخه",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade400,
            ),
          ),
          Text(
            "1.5.9",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }

  Widget listOfOption() {
    return SliverList.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey.shade200,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    children: [
                      Text(
                        title[index],
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset("images/${photo[index]}.png"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget acountInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 95,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey.shade200,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("images/edit1.png"),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "علیرضا دانشور سپهری",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(66, 26),
                        ),
                        onPressed: () {},
                        child: Text("تایید شد"),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "09144244236",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 56,
                  height: 56,
                  child: Image.asset(
                    "images/avatar.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget acountTitle() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "حساب کاربری",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Image.asset("images/profile.png"),
        ],
      ),
    );
  }

  Widget searchBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 300,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "جستجو...",
                    hintStyle: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                Icons.search,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
