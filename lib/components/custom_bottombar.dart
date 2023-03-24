import 'package:calori_app/views/home_page.dart';
import 'package:calori_app/views/profile_page.dart';
import 'package:flutter/material.dart';

import '../views/calculate_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar>
    with TickerProviderStateMixin {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var tab = TabController(initialIndex: _tabIndex, length: 3, vsync: this);

    void _handleTabSelection() {
      setState(() {
        tab.index = _tabIndex;
      });
    }

    tab.addListener(_handleTabSelection);

    return TabBar(
      indicatorWeight: 0.000001,
      labelPadding: EdgeInsets.zero,
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.amber,
      controller: tab,
      tabs: [
        GestureDetector(
          child: Container(
            width: double.infinity,
            color: Colors.black,
            child: Tab(
              icon: Icon(Icons.home_outlined),
            ),
          ),
          onTap: () {
            setState(() {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
              _tabIndex = 0;
            });
          },
        ),
        GestureDetector(
          child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Tab(icon: Icon(Icons.calculate_outlined))),
          onTap: () {
            setState(() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => CalculatePage()));
              _tabIndex = 1;
            });
          },
        ),
        GestureDetector(
          child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Tab(icon: Icon(Icons.person_4_outlined))),
          onTap: () {
            setState(() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
              _tabIndex = 2;
            });
          },
        )
      ],
    );
  }
}









// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {

//   @override
//   Widget build(BuildContext context) {
//     // return BottomNavigationBar(
//     //   //backgroundColor: Colors.black,
//     //   items: const <BottomNavigationBarItem>[
//     //     BottomNavigationBarItem(
//     //       backgroundColor: Colors.black,
//     //       icon: Icon(Icons.home),
//     //       label: 'Home',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.business),
//     //       label: 'Business',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.school),
//     //       label: 'School',
//     //     ),
//     //   ],
//     //   currentIndex: _selectedIndex,
//     //   selectedItemColor: Colors.amber[800],
//     //   onTap: _onItemTapped,
//     // );
//     return TabBar(
//         onTap: (index) {
//           setState(() {});
//         },
//         indicatorWeight: 0.000001,
//         // indicatorPadding: EdgeInsets.zero,
//         indicatorColor: Colors.transparent,
//         labelPadding: EdgeInsets.zero,
//         tabs: [
//           GestureDetector(
//             onTap: () {},
//             child: Container(
//               width: double.infinity,
//               color: Colors.black,
//               child: Tab(
//                 child: Icon(Icons.home),
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {},
//             child: Container(
//               width: double.infinity,
//               color: Colors.black,
//               child: Tab(
//                 child: Icon(Icons.home),
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {},
//             child: Container(
//               width: double.infinity,
//               color: Colors.black,
//               child: Tab(
//                 child: Icon(Icons.home),
//               ),
//             ),
//           ),
//         ]);
//   }
// }
