import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {

  final textEditingController;
  final hintText;
  final Icon? ico;

  const TextFieldComponent({Key? key, required this.textEditingController, required this.hintText, required this.ico}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MediaQuery.of(context).size.width/1.2,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: ico!,
            prefixIconColor: Colors.grey,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(width: 3, color: Colors.purple),
            )),
      ),
    );


  }
}
