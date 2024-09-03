import 'package:flutter/material.dart';
import 'package:watch_one_piece/widgets/search_widgets/one_piece_search_bar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> data = [
    'Water 7',
    'Enies LObby',
    'Marineford',
    'Impel Down',
    'Alabasta',
    'Whole Cake',
    'Dressrosa',
    'Little Island',
    'Zou',
    'Wano',
  ];

  List<String> searchResults = [];

  void onChanged(String query) {
    setState(() {
      if (query.isEmpty) {
        searchResults = [];
      } else {
        searchResults = data
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Search",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            OnePieceSearchBar(
              onChanged: (value) => onChanged(value),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(searchResults[index], style: TextStyle(color: Theme.of(context).primaryColor,),),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
