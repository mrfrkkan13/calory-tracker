import 'package:calori_app/components/meal_board/meal_board_tabbar.dart';
import 'package:calori_app/components/meal_board/meal_bord_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MealBoardPage extends StatelessWidget {
  const MealBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          MealBoardAppBar(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MealBoardTabbar(),
          ),
        ],
      )),
    );
  }
}
