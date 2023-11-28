import 'package:divar/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/logo.png"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 33, bottom: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "مشاهده همه",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      "آویزهای داغ",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 270,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: cardnum1(index + 1),
                      );
                    }),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 32, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "مشاهده همه",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      "آویزهای اخیر",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 600,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: cardnum2(index + 1),
                      );
                    }),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 40),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardnum2(int index) {
    return Container(
      height: 139,
      width: 343,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 111,
                height: 107,
                child: Image.asset(
                  "images/$index.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "واحد دوبلکس فول امکانات",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "سال ساخت 1398، سند تک برگ \n دوبلکس تجهیزات کامل",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Text(
                              "25/680/000/000",
                              style: TextStyle(
                                fontFamily: "shabnam",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: customred,
                              ),
                            ),
                          )),
                        ),
                        Text(
                          ":قیمت",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardnum1(int index) {
    return Container(
      width: 224,
      height: 270,
      child: Card(
        elevation: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                width: 192,
                height: 112,
                child: Image.asset(
                  "images/$index.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16, bottom: 8),
              child: Text(
                "ویلا 500 متری زیر قیمت",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                "ویو عالی، سند تک برگ، سال ساخت",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[500],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                "1402، تحویل فوری",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[500],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        "25/680/000/000",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: customred,
                        ),
                      ),
                    )),
                  ),
                  Text(
                    ":قیمت",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
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
