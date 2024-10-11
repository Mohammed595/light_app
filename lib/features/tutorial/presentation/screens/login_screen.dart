

import 'package:flutter/material.dart';
import 'package:light_app/features/tutorial/presentation/widgets/button_widget.dart';


// here all content of screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: Center(child: ButtonWidget()),
    );
  }
}