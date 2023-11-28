import 'package:divar/constants/constants.dart';
import 'package:flutter/material.dart';

class ApartmentInfoScreen extends StatefulWidget {
  const ApartmentInfoScreen({super.key});

  @override
  State<ApartmentInfoScreen> createState() => _ApartmentInfoScreenState();
}

class _ApartmentInfoScreenState extends State<ApartmentInfoScreen> {
  var listoption = ["توضیحات", "ویژگی و امکانات", "قیمت", "مشخصات"];
  int num = 0;
  bool moshakhasatscreen = false;
  bool gheymatscreen = false;
  bool vijegihascreen = false;
  bool tozihatscreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.black,
            ),
          )
        ],
        leadingWidth: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Container(
              width: 24,
              height: 24,
              child: Image.asset(
                "images/archive.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Container(
              width: 24,
              height: 24,
              child: Image.asset(
                "images/share.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Container(
              width: 24,
              height: 24,
              child: Image.asset(
                "images/information.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            mainwidget(),
            listcategory(),
            moshakhasat(),
            gheymat(),
            vijegiha(),
            tozihat(),
          ],
        ),
      ),
    );
  }

  Widget tozihat() {
    return Visibility(
      visible: tozihatscreen,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Text(
              "ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontFamily: "shabnam",
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.grey.shade500,
              ),
            ),
            buttoncustom(),
          ],
        ),
      ),
    );
  }

  Widget vijegiha() {
    return Visibility(
      visible: vijegihascreen,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "ویژگی ها",
                  style: TextStyle(
                    fontFamily: "shabnam",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Image.asset("images/clipboard.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: double.infinity,
              height: 112,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade200,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "تک برگی",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          "سند",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "شمالی",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          "جهت ساختمان",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 24, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "امکانات",
                  style: TextStyle(
                    fontFamily: "shabnam",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Image.asset("images/magicpen.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: double.infinity,
              height: 392,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "آسانسور",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      "پارکینگ",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      "انباری",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      "بالکن",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      "پنت هاوس",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      "جنس کف سرامیک",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      "سرویس بهداشتی ایرانی و فرنگی",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          buttoncustom(),
        ],
      ),
    );
  }

  Widget gheymat() {
    return Visibility(
      visible: gheymatscreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 96,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 16, left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "46/460/000",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ":قیمت هر متر",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 16, left: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "23/230/000/000",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ":قیمت کل ",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          buttoncustom(),
        ],
      ),
    );
  }

  Widget moshakhasat() {
    return Visibility(
      visible: moshakhasatscreen,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 98,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 24, left: 24, top: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "متراژ",
                            style: TextStyle(
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                          Text(
                            "اتاق",
                            style: TextStyle(
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                          Text(
                            "طبقه",
                            style: TextStyle(
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                          Text(
                            "ساخت",
                            style: TextStyle(
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 24, left: 24, bottom: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "500",
                            style: TextStyle(
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1401",
                            style: TextStyle(
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "موقعیت مکانی",
                      style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset("images/map.png"),
                  ],
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 32),
                    child: Container(
                      width: double.infinity,
                      child: Image.asset(
                        "images/mapshow.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(210, 40),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on),
                        Text("...گرگان، صیاد شیرا"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          buttoncustom(),
        ],
      ),
    );
  }

  Widget buttoncustom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(159, 40),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Text("اطلاعات تماس"),
              SizedBox(
                width: 12,
              ),
              Image.asset("images/phone.png"),
            ],
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(159, 40),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Text("گفتگو"),
              SizedBox(
                width: 12,
              ),
              Image.asset("images/message.png"),
            ],
          ),
        ),
      ],
    );
  }

  Widget listcategory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 400,
          height: 90,
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (index == 0) {
                        num = 0;
                        moshakhasatscreen = false;
                        gheymatscreen = false;
                        vijegihascreen = false;
                        tozihatscreen = true;
                      } else if (index == 1) {
                        num = 1;
                        moshakhasatscreen = false;
                        gheymatscreen = false;
                        vijegihascreen = true;
                        tozihatscreen = false;
                      } else if (index == 2) {
                        num = 2;
                        moshakhasatscreen = false;
                        gheymatscreen = true;
                        vijegihascreen = false;
                        tozihatscreen = false;
                      } else if (index == 3) {
                        num = 3;
                        moshakhasatscreen = true;
                        gheymatscreen = false;
                        vijegihascreen = false;
                        tozihatscreen = false;
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 32),
                    child: Container(
                      decoration: BoxDecoration(
                        color: index == num ? customred : Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Text(
                          listoption[index],
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: index == num ? Colors.white : customred,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget mainwidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Container(
              width: 343,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  4,
                ),
              ),
              child: Image.asset(
                "images/photo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "16 دقیقه پیش در گرگان",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500,
                ),
              ),
              Container(
                width: 59,
                height: 29,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.shade100,
                ),
                child: Center(
                  child: Text(
                    "آپارتمان",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: customred,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, right: 16, bottom: 64),
          child: Text(
            "آپارتمان 500 متری در صیاد شیرازی",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                    color: Colors.black,
                  ),
                  Text(
                    ("!هشدار های قبل از معامله"),
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
        )
      ],
    );
  }
}
