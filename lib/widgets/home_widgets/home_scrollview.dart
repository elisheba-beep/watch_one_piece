import 'package:flutter/material.dart';
import 'package:watch_one_piece/subscreens/details_screen.dart';

class HomeScrollView extends StatelessWidget {
  const HomeScrollView({
    super.key,
    required this.itemsList,
    required this.width,
    required this.heading,
  });

  final List<String> itemsList;
  final String heading;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
          child: Text(
            heading,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var item in itemsList)
                itemsList.isEmpty
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                                height: 200,
                                width: width,
                                'assets/images/one_piece_logo.png'),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              height: 200,
                              width: width,
                              item,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
            ],
          ),
        ),
      ],
    );
  }
}
