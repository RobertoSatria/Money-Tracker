import 'package:bank_sha/shared/theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/ic_overview.png',
          width: 20,
        ),
        label: 'Overview',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/ic_history.png',
          width: 20,
        ),
        label: 'History',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/ic_statistik.png',
          width: 20,
        ),
        label: 'Statistic',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/ic_reward.png',
          width: 20,
        ),
        label: 'Reward',
      ),
    ];
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        bottomNavigationBar: BottomAppBar(
          color: whiteColor,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          notchMargin: 6,
          child: BottomNavigationBar(
            items: items,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: blueColor,
            selectedLabelStyle: blueTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            unselectedLabelStyle: greyTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            unselectedItemColor: greenColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: index,
            // backgroundColor: Colors.transparent,
            onTap: (index) => setState(
              () {
                this.index = index;
              },
            ),
          ),
        ),
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.home_filled,
            color: Colors.white,
            size: 20,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body:
            const Center() // this will be held a home page and it will be changed dynamically according to our indexes is
        );
  }
}
