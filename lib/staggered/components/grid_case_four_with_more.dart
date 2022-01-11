import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grid_images/staggered/components/grid_scroll.dart';

class StandardGridFourWithMore extends StatelessWidget {
  List<String> imagesList;

  StandardGridFourWithMore({required this.imagesList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      axisDirection: AxisDirection.right,
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Image.network(
            imagesList[3],
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
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => GridScroll(imagesList: imagesList)));
            },
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(imagesList[1], fit: BoxFit.cover),
                Positioned.fill(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black45,
                    child: Text(
                      '+' + (imagesList.length - 3).toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 3,
          mainAxisCellCount: 3,
          child: Image.network(
            imagesList[0],
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
