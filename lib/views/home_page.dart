import 'package:calori_app/components/custom_bottombar.dart';
import 'package:calori_app/views/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 23),
                  ),
                  Text("Have a nice day", style: TextStyle(fontSize: 12))
                ],
              ),
              GestureDetector(
                child: Icon(Icons.person_2_outlined),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              )
            ],
          ),
        ),
        body: Center(),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
