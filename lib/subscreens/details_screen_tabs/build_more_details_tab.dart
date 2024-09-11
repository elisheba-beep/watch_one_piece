import 'package:flutter/material.dart';

Widget buildMoreDetailsTab() {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Genres',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            'Action, Adventure, Fantasy',
          ),
          SizedBox(height: 16),
          Text('Directors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Eiichiro Oda'),
          SizedBox(height: 16),
          Text('Cast',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            'Monkey D. Luffy, Roronoa Zoro, Nami',
          ),
          SizedBox(height: 16),
          Text('Maturity Rating',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('18+'),
        ],
      ),
    ),
  );
}
