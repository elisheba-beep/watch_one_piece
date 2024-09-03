import 'package:flutter/material.dart';

class OnePieceLogo extends StatelessWidget {
  const OnePieceLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        width: MediaQuery.sizeOf(context).width / 2,
        height: 50,
        image: const AssetImage("assets/images/one_piece_logo.png"),
      ),
    );
  }
}
