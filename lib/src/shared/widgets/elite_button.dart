import 'package:flutter/material.dart';

class EliteButton extends StatelessWidget {
  const EliteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      onPressed: () {},
      child: const Text('Welcome'),
    );
  }
}
