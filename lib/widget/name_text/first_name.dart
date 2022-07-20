import 'package:flutter/material.dart';

import '../../utils/color.dart';

class Name extends StatelessWidget {
  const Name({
    super.key,
    required this.name,
    required this.hintText,
  });

  final TextEditingController name;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: TextField(
        controller: name,
        style: TextStyle(color: purple),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
          focusedBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
          enabledBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
          errorBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
          disabledBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
          contentPadding: const EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
          hintText: hintText,
          hintStyle: TextStyle(color: grey, fontWeight: FontWeight.normal, fontFamily: 'Poppins')
        ),
      ),
    );
  }
}
