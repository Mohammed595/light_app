

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('welcome agin in lghit app');
      },
      child: const Text ('click from welcoming'),
    );
  }
}