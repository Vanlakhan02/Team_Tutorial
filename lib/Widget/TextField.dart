import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  const TextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
          decoration: InputDecoration(
              label: Text("USERNAME"), prefixIcon: Icon(Icons.person))),
      TextFormField(
          decoration: InputDecoration(
              label: Text("PASSWORD"), prefixIcon: Icon(Icons.lock)))
    ]);
  }
}
