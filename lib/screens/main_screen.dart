import 'package:divar/constants/constants.dart';
import 'package:divar/screens/acount_screen.dart';
import 'package:divar/screens/add_aviz_screen.dart';
import 'package:divar/screens/apartmentinfo_screen.dart';
import 'package:divar/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int SelectedBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: Container(
        height: 65,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey.shade100,
            currentIndex: SelectedBottomNavigationIndex,
            onTap: (index) {
              setState(() {
                SelectedBottomNavigationIndex = index;
              });
            },
            selectedIconTheme: IconThemeData(size: 30),
            unselectedIconTheme: IconThemeData(size: 30),
            selectedItemColor: customred,
            unselectedItemColor: Colors.grey.shade400,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(
                fontFamily: "shabnam",
                fontWeight: FontWeight.w400,
                fontSize: 14),
            unselectedLabelStyle: TextStyle(
                fontFamily: "shabnam",
                fontWeight: FontWeight.w400,
                fontSize: 14),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("images/profilecircle.png"),
                activeIcon: Image.asset("images/activeprofilecircle.png"),
                label: "آویزمن",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/addcircle.png"),
                activeIcon: Image.asset("images/activeaddcircle.png"),
                label: "افزودن آویز",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/searchnormal.png"),
                activeIcon: Icon(
                  Icons.search,
                  color: customred,
                ),
                label: "جستجو",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/taglogo.png"),
                activeIcon: Image.asset("images/activetaglogo.png"),
                label: "آویز آگهی ها",
              ),
            ]),
      ),
      body: IndexedStack(
        index: SelectedBottomNavigationIndex,
        children: GetLayout(),
      ),
    );
  }

  List<Widget> GetLayout() {
    return [
      AcountScreen(),
      AddAviz(),
      ApartmentInfoScreen(),
      HomeScreen(),
    ];
  }
}
