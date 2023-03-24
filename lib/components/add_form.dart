import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddFormWidget extends StatefulWidget {
  const AddFormWidget({super.key});

  @override
  State<AddFormWidget> createState() => _AddFormWidgetState();
}

class _AddFormWidgetState extends State<AddFormWidget> {
  TextEditingController _tcontrol = TextEditingController();
  List foodList = [];

  foodAdd() {
    setState(() {
      foodList.add(_tcontrol.text);
      _tcontrol.clear();
    });
  }

  todoCelete() {
    setState(() {
      foodList.remove(_tcontrol.text);
      _tcontrol.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _tcontrol,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(Icons.lunch_dining),
                prefixIconColor: Colors.grey,
                hintText: "add food",
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.purple,
                      width: 2,
                    )),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _tcontrol,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(Icons.add_task_outlined),
                prefixIconColor: Colors.grey,
                hintText: "calori",
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.purple,
                      width: 2,
                    )),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 45,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const StadiumBorder()),
                  onPressed: () {
                    foodAdd();
                  },
                  child: const Text(
                    "Add Food",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 12,
            ),
            foodList.isNotEmpty
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: foodList.length,
                        itemBuilder: (context, index) => Card(
                              color: Colors.black38,
                              child: ListTile(
                                textColor: Colors.white,
                                title: Text(foodList[index]),
                              ),
                            )),
                  )
                : const Center(
                    child: Text(
                      "No Data Today...",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
