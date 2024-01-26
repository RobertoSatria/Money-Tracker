import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: const CircleBorder(eccentricity: 1, side: BorderSide.none),
        child: Icon(
          Icons.home_filled,
          weight: 24,
          color: whiteColor,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        notchMargin: 6,
        child: BottomNavigationBar(
          items: [
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
          ],
          backgroundColor: whiteColor,
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
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentPageIndex,
          // backgroundColor: Colors.transparent,
          // onTap: (index) => setState(
          //   () {
          //     this.index = index;
          //   },
          // ),
        ),
      ),
      // this will be held a home page and it will be changed dynamically according to our indexes is
    );
  }
}
