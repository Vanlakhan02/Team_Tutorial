import 'package:flutter/material.dart';
import '../Widget/logo_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 80),
                child: logo_title(
                    pathLogo: "Assets/Icons/a.png",
                    title_prefix: "Wecome to",
                    title_trailing: "APPDESIGN"))),
        Form(child: Column(
          children: [
               textField("USERNAME", Icons.person),
               textField("PASSWORD", Icons.lock)
        ]))
      ]),
    );
  }

  Widget textField(String text, IconData logo) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 2.0),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        decoration:
            InputDecoration(hintText: text, prefixIcon: Icon(logo)),
      ),
    );
  }
}
