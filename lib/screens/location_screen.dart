import 'package:divar/screens/sabtAgahi_screen.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool _switchVal = true;
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
                width: 300,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, right: 16, bottom: 16),
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
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              "بعد انتخاب محل دقیق روی نقشه می توانید نمایش آن را فعال\n یا غیر فعال کنید تا حریم شخصی شما حفظ شود",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontFamily: "shabnam",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey[500],
              ),
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
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
          Padding(
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
                      ("موقعیت دقیق نقشه نمایش داده شود؟"),
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
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 32,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SabtAgahi();
                }));
              },
              child: Text("بعدی"),
            ),
          ),
        ],
      ),
    );
  }
}
