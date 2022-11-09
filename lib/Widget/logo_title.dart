import 'package:flutter/material.dart';

class logo_title extends StatelessWidget {
  final String pathLogo;
  final String title_prefix;
  final String title_trailing;

  const logo_title({required this.pathLogo, required this.title_prefix, required this.title_trailing, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(width: 200, height: 200 ,child: Image(image: AssetImage(pathLogo))),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(title_prefix, style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(title_trailing, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                )
              ],
            ))
      ]),
    );
  }
}
