import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeParagraph extends StatelessWidget {
  HomeParagraph({super.key, required this.description, required this.image});
  late String description;
  late Image image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                description,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex:2,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: image,
            ),
          ),
        ],
      ),
    );
  }
}
