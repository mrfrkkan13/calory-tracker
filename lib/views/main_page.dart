import 'package:calori_app/components/persentage_widget.dart';
import 'package:calori_app/views/profile_page.dart';
import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../components/piechart_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    final String formatted = formatter.format(now);
    return Scaffold(
      backgroundColor: Colors.black87,
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            Container(
              //Yüzde gösterdiğimiz bölge

              child: Column(
                children: [
                  Text(
                    formatted,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                      height: 300,
                      child: FittedBox(
                        child: PersentageWidget(
                          color: Colors.purple,
                        ),
                      ))
                ],
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          PersentageWidget(
                            color: Colors.tealAccent,
                          ),
                          Text(
                            "Carbs",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          PersentageWidget(
                            color: Colors.amber,
                          ),
                          Text(
                            "Fat",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          PersentageWidget(
                            color: Colors.redAccent,
                          ),
                          Text(
                            "Protein",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        height: 100,
                        color: Colors.purple,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Left",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Data 100",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                                Text(
                                  "/kcal",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        height: 100,
                        color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Consumed",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Data 100",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                                Text(
                                  "/kcal",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     SizedBox(
                  //         child: FittedBox(
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(12)),
                  //       ),
                  //     )),
                  //     SizedBox(
                  //         child: FittedBox(
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(12)),
                  //       ),
                  //     )),
                  //   ],
                  // ),
                  //TODO ADD Button
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
