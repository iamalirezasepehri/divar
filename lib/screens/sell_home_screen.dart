import 'package:divar/screens/sabt_apartment_screen.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

// ignore: must_be_immutable
class SellHouse extends StatelessWidget {
  SellHouse({super.key});
  var listtitle = [
    "فروش آپارتمان",
    "فروش خانه و ویلا",
    "فروش زمین کلنگی",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.clear_outlined,
          color: Colors.black,
          size: 24,
        ),
        title: Image.asset("images/dastebandiaviz.png"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 75,
                height: 4,
                decoration: BoxDecoration(
                  color: customred,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                ),
              ),
            ],
          ),
          preferredSize: Size(double.infinity, 4),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SabtApartment();
                  }));
                },
                child: listofadd(listtitle[index]));
          }),
    );
  }

  Widget listofadd(String title) {
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
                color: customred,
              ),
              Text(
                title,
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
