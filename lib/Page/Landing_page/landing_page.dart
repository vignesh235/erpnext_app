import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/custom_textfield.dart';
import 'package:heroicons/heroicons.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  final urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ReusableTextField(
              labelText: "Url",
              controller: urlController,
              readyonly: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              suffixIcon: HeroIcons.globeAlt)
        ],
      ),
    );
  }
}
