import 'package:flutter/material.dart';
import 'package:grid_images/size_config.dart';

import 'first_one/grid/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoGrid(
        imageUrls: [
          "https://images.bunches.co.uk/products/large/1669-fpley-1.jpg",
          "https://images.bunches.co.uk/products/large/1669-fpley-1.jpg",
          "https://images.bunches.co.uk/products/large/1669-fpley-1.jpg",
          "https://images.bunches.co.uk/products/large/1669-fpley-1.jpg",
          "https://images.bunches.co.uk/products/large/1669-fpley-1.jpg",
          "https://images.bunches.co.uk/products/large/1669-fpley-1.jpg",
          "https://images.bunches.co.uk/products/large/1669-fpley-1.jpg",
        ],
        onImageClicked: (int) {},
        onExpandClicked: () {},
      ),
    );
  }
}
