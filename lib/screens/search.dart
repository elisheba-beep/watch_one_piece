import 'package:flutter/material.dart';
import 'package:watch_one_piece/models/arc.dart';
import 'package:watch_one_piece/services/api_service.dart';
import 'package:watch_one_piece/subscreens/details_screen.dart';
import 'package:watch_one_piece/widgets/search_widgets/one_piece_search_bar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late Future<List<Arc>> arcs;
  List<Arc> filteredArcs = [];
  String searchTerm = '';

  @override
  void initState() {
    super.initState();
    arcs = ApiService().fetchArcs();
  }

  void updateFilteredArcs(String searchTerm) {
    setState(() {
      this.searchTerm = searchTerm;
    });
  }

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
      body: FutureBuilder<List<Arc>>(
        future: arcs,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final allArcs = snapshot.data!;
            filteredArcs = allArcs
                .where((arc) =>
                    arc.name.toLowerCase().contains(searchTerm.toLowerCase()))
                .toList();
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  OnePieceSearchBar(onChanged: updateFilteredArcs),
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredArcs.length,
                      itemBuilder: (context, index) {
                        
                        return ListTile(
                          title: Text(filteredArcs[index].name),
                          leading: Image.network(filteredArcs[3].thumbnail),
                          onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsScreen(),
                            ),
                          );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
