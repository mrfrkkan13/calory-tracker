import 'package:calori_app/components/profile_daily_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/custom_bottombar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("UserName"),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image(
            image: NetworkImage('https://picsum.photos/250?image=233'),
          ),
        ),
      ),
      body: Center(
        child: Column(children: [ProfileDailiyList()]),
      ),
    );
  }
}
