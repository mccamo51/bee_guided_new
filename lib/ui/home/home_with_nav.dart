import 'package:bee_guided/ui/home/discover_page.dart';
import 'package:bee_guided/ui/home/home.dart';
import 'package:bee_guided/ui/home/my_favourites.dart';
import 'package:bee_guided/ui/home/settings/more.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeWithNav extends StatefulWidget {
  const HomeWithNav({Key? key}) : super(key: key);
  @override
  State<HomeWithNav> createState() => _HomeWithNavState();
}

class _HomeWithNavState extends State<HomeWithNav> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const DiscoverPage(),
    const MyFavourite(),
    const MorePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              width: 23,
              height: 23,
              child: SvgPicture.asset(
                "assets/icons/home.svg",
                color: Colors.grey,
              ),
            ),
            icon: SizedBox(
              width: 23,
              height: 23,
              child: SvgPicture.asset(
                "assets/icons/home.svg",
                color: Colors.grey,
              ),
            ),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            // activeIcon: Container(
            //   width: 23,
            //   height: 23,
            //   child: SvgPicture.asset(
            //     "assets/iconsv2/briefcase_.svg",
            //     color: primaryColor,
            //   ),
            // ),
            icon: SizedBox(
              width: 23,
              height: 23,
              child: SvgPicture.asset(
                "assets/imgs/wallet.svg",
                color: Colors.grey,
              ),
            ),
            label: ('Discover'),
          ),
          BottomNavigationBarItem(
            // activeIcon: Container(
            //   width: 23,
            //   height: 23,
            //   child: SvgPicture.asset(
            //     "assets/iconsv2/wallet.svg",
            //     color: SECONDARYCOLOR,
            //   ),
            // ),
            icon: SizedBox(
              width: 23,
              height: 23,
              child: SvgPicture.asset(
                "assets/imgs/profile.svg",
                color: Colors.grey,
              ),
            ),
            label: ('Favorite'),
          ),
          BottomNavigationBarItem(
            // activeIcon: Container(
            //   width: 23,
            //   height: 23,
            //   child: SvgPicture.asset(
            //     "assets/iconsv2/wallet.svg",
            //     color: SECONDARYCOLOR,
            //   ),
            // ),
            icon: SizedBox(
              width: 23,
              height: 23,
              child: SvgPicture.asset(
                "assets/imgs/profile.svg",
                color: Colors.grey,
              ),
            ),
            label: ('More'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
