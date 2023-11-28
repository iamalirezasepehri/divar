// ignore_for_file: unused_field

import 'package:divar/screens/location_screen.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SabtApartment extends StatefulWidget {
  const SabtApartment({super.key});

  @override
  State<SabtApartment> createState() => _SabtApartmentState();
}

class _SabtApartmentState extends State<SabtApartment> {
  var listOfHouseOption = ["آسانسور", "پارکینگ", "انباری"];
  bool _switchVal = true;
  static const menuitems = <String>[
    "فروش آپارتمان",
    "فروش خانه و ویلا",
    "فروش زمین کلنگی",
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuitems
      .map(
        (String value) => DropdownMenuItem<String>(
          child: Text(value),
          value: value,
        ),
      )
      .toList();
  String _btn1SelectedVal = "فروش آپارتمان";

  String? _btn2SelectedVal;

  String? _btn3SelectedVal;
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
        title: Image.asset("images/sabtaviz.png"),
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
                width: 150,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            dastebandiAviz(),
            vijegiha(),
            emkanat(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LocationScreen();
                  }));
                },
                child: Text("بعدی"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget emkanat() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 24),
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
        Container(
          height: 300,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 27),
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
                          Switch(
                              activeColor: customred,
                              value: this._switchVal,
                              onChanged: (bool value) {
                                setState(() {
                                  this._switchVal = value;
                                });
                              }),
                          Text(
                            listOfHouseOption[index],
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
              }),
        ),
      ],
    );
  }

  Widget vijegiha() {
    return Column(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textfieldAndTitle("تعداد اتاق ها", "6"),
              textfieldAndTitle("متراژ", "350"),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textfieldAndTitle("سال ساخت", "1402"),
              textfieldAndTitle("طبقه", "3"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Divider(
            height: 1,
            color: Colors.grey[100],
          ),
        ),
      ],
    );
  }

  Widget dastebandiAviz() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 32, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "انتخاب دسته بندی آویز",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset("images/choosedastebandiaviz.png"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textfieldAndTitle("محدوده ملک", "خیابان صیاد شیرازی"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "دسته بندی",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[500],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 159,
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey.shade200,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: DropdownButton(
                        icon: Icon(Icons.expand_more),
                        value: _btn1SelectedVal,
                        items: this._dropDownMenuItems,
                        onChanged: (String? newValue) {
                          setState(() {
                            _btn1SelectedVal = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Divider(
            height: 1,
            color: Colors.grey[100],
          ),
        ),
      ],
    );
  }

  Widget textfieldAndTitle(String title, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: "shabnam",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey[500],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          width: 159,
          height: 48,
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
                hintText: hint,
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
      ],
    );
  }
}
