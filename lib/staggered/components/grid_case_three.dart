import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StandardGridThree extends StatelessWidget {
  List<String> imagesList;

  StandardGridThree({required this.imagesList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 3,
      crossAxisSpacing: 4,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Image.network(
            imagesList[1],
            fit: BoxFit.cover,
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: Image.network(
            imagesList[0],
            fit: BoxFit.cover,
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Image.network(
            imagesList[2],
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
