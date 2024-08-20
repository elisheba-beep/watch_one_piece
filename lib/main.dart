import 'package:flutter/material.dart';
import 'package:watch_one_piece/bottom_nav.dart';
import 'package:watch_one_piece/theme/theme.dart';
import 'package:watch_one_piece/theme/util.dart';

void main() {
  runApp(const WatchOnePiece());
}

class WatchOnePiece extends StatelessWidget {
  const WatchOnePiece({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts

    TextTheme textTheme = createTextTheme(context, "Pirata One", "Bangers");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watch One Piece',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const BottomNav(),
    );
  }
}
