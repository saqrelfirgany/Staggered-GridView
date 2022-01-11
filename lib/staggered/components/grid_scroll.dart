import 'package:flutter/material.dart';

class GridScroll extends StatelessWidget {
  List<String> imagesList;

  GridScroll({Key? key, required this.imagesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: imagesList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) => Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imagesList[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
