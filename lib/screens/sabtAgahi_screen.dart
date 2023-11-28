import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SabtAgahi extends StatefulWidget {
  const SabtAgahi({super.key});

  @override
  State<SabtAgahi> createState() => _SabtAgahiState();
}

class _SabtAgahiState extends State<SabtAgahi> {
  var _switchVal = true;
  var listtitle = ["فعال کردن گفتگو", "فعال کردن تماس"];
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
                width: 380,
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
          preferredSize: Size(MediaQuery.of(context).size.height, 4),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: tasvirAviz(),
          ),
          SliverToBoxAdapter(
            child: onvanAviz(),
          ),
          SliverToBoxAdapter(
            child: tozihat(),
          ),
          SliverToBoxAdapter(
            child: listoption(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32, right: 16, left: 16),
              child: ElevatedButton(onPressed: () {}, child: Text("ثبت آگهی")),
            ),
          ),
        ],
      ),
    );
  }

  Widget listoption() {
    return Container(
      height: 200,
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 27),
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
                        listtitle[index],
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
    );
  }

  Widget tozihat() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, right: 16, bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "توضیحات",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset("images/clipboardtext.png"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 104,
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
                  hintText: "...توضیحات آویز را وارد کنید",
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
      ],
    );
  }

  Widget onvanAviz() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, right: 16, bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "عنوان آویز",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset("images/edit.png")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  hintText: "عنوان آویز را وارد کنید",
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
      ],
    );
  }

  Widget tasvirAviz() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, right: 16, bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "تصویر آویز",
                style: TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset("images/camera.png"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DottedBorder(
            dashPattern: [6, 3],
            strokeWidth: 2,
            color: Colors.grey.shade300,
            child: Container(
              height: 160,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 44),
                child: Column(
                  children: [
                    Text(
                      "لطفا تصویر آویز خود را انتخاب کنید",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("انتخاب تصویر"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
