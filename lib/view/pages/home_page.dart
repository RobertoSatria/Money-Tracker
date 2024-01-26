import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/home_categories.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home-page');
        },
        backgroundColor: purpleColor,
        shape: const CircleBorder(eccentricity: 1, side: BorderSide.none),
        child: Icon(
          Icons.home_filled,
          weight: 24,
          color: whiteColor,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: blueColor,
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Image.asset(
              'assets/ic_overview.png',
              width: 20,
            ),
            label: 'Overview',
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/ic_history.png',
              width: 20,
            ),
            label: 'History',
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/ic_statistik.png',
              width: 20,
            ),
            label: 'Statistic',
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/ic_reward.png',
              width: 20,
            ),
            label: 'Reward',
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 48,
          horizontal: 24,
        ),
        children: [
          buildProfile(),
          buildCard(),
          buildProgressBar(),
          buildCategories(),
        ],
      ),
    );
  }

  Widget buildProfile() {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Hello,',
                style: greyTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: regular,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'shaynahan', //iki kudu dynamic ya mengikuti dari input yang kita masukkin
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.amber,
          backgroundImage: AssetImage('assets/img_profile.png'),
        )
      ],
    );
  }

  Widget buildCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 20,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/img_card.png',
            ),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna', // Ini dynamic ya
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 76,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
          Text(
            'Rp 12.500', //ini dynamic lagi ya
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProgressBar() {
    return Container(
      width: 327,
      height: 80,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(28.0),
      ),
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Level 1', //ini dynamic
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              Text(
                '55% ', //ini dynamic
                style: greenTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              Text(
                'of Rp 20.000', //ini dynamic nantinya di setup sesuai user kalo dah ngatur backendnya kita
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          const Spacer(),
          ClipRRect(
            //yang ini harus dynamic semua ntar kocak gaming
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
              minHeight: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategories() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Row(
            children: [
              HomeCategories(
                imageAsset: 'assets/ic_top_up.png',
                title: 'Top Up',
                onTap: null,
              ),
              Spacer(),
              HomeCategories(
                imageAsset: 'assets/ic_send.png',
                title: 'Send',
                onTap: null,
              ),
              Spacer(),
              HomeCategories(
                imageAsset: 'assets/ic_withdraw.png',
                title: 'Withdraw',
                onTap: null,
              ),
              Spacer(),
              HomeCategories(
                imageAsset: 'assets/ic_more.png',
                title: 'More',
                onTap: null,
              ),
            ],
          )
        ],
      ),
    );
  }
}
