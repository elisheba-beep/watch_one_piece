import 'package:flutter/material.dart';

class OnePieceSearchBar extends StatefulWidget {
  const OnePieceSearchBar({super.key, required this.onChanged});
  final void Function(String)? onChanged;

  @override
  State<OnePieceSearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<OnePieceSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          labelText: 'Search by arc',
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
          ),
          border: const OutlineInputBorder(),
          icon: const Icon(Icons.search),
          iconColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
