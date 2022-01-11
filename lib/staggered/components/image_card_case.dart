import 'package:flutter/material.dart';

class ImageCardCase1 extends StatelessWidget {
  List<String> imagesList;
  int index;

  ImageCardCase1({
    required this.index,
    required this.imagesList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          imagesList[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
