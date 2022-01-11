import 'package:flutter/material.dart';

class FacebookEffect extends StatelessWidget {
  const FacebookEffect({
    Key? key,
    required this.imageUrl,
    required this.remaining,
  }) : super(key: key);

  final String imageUrl;
  final int remaining;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(imageUrl, fit: BoxFit.cover),
          Positioned.fill(
            child: Container(
              alignment: Alignment.center,
              color: Colors.black45,
              child: Text(
                '+' + remaining.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
