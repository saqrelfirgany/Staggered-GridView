// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// import 'grid_scroll.dart';
// import 'image_card_case.dart';
//
// class GridBaseTwo extends StatelessWidget {
//   List<String> imagesList;
//
//   GridBaseTwo({required this.imagesList, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverQuiltedGridDelegate(
//         crossAxisCount: 6,
//         mainAxisSpacing: 4,
//         crossAxisSpacing: 4,
//         repeatPattern: QuiltedGridRepeatPattern.inverted,
//         pattern: [
//           QuiltedGridTile(2, 2),
//           QuiltedGridTile(1, 1),
//           QuiltedGridTile(1, 1),
//           QuiltedGridTile(2, 2),
//
//         ],
//       ),
//       childrenDelegate: SliverChildBuilderDelegate(
//             (context, index) => Image.network(
//               imagesList[0],
//               fit: BoxFit.cover,
//             ),
//       ),
//     );
//   }
// }
// // StaggeredGridTile.count(
// // crossAxisCellCount: 1,
// // mainAxisCellCount: 1,
// // child: GestureDetector(
// // onTap: () {
// // Navigator.of(context).push(MaterialPageRoute(
// // builder: (context) => GridScroll(imagesList: imagesList)));
// // },
// // child: Stack(
// // fit: StackFit.expand,
// // children: [
// // Image.network(imagesList[1], fit: BoxFit.cover),
// // Positioned.fill(
// // child: Container(
// // alignment: Alignment.center,
// // color: Colors.black45,
// // child: Text(
// // '+' + (imagesList.length - 3).toString(),
// // style: const TextStyle(fontSize: 30),
// // ),
// // ),
// // ),
// // ],
// // ),
// // ),
// // ),