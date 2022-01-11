import 'package:flutter/material.dart';

class LastOne extends StatelessWidget {
  const LastOne({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      onTap: () {},
    );
  }
}
