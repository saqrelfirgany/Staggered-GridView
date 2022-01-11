import 'package:flutter/material.dart';
import 'package:grid_images/staggered/staggered.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: const Text(
        'Staggered Grid View',
        style: TextStyle(fontSize: 24.0),
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Staggerd()));
      },
    );
  }
}
