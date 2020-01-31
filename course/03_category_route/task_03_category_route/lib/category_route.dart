import 'package:flutter/material.dart';

import 'category.dart';

// TODO: Check if we need to import anything

final _background = Colors.green[100];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(new Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: Icons.cake));
    }

    final listView = Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      color: _background,
      child: _buildListCategoryWidgets(categories),
    );

    final appBar = AppBar(
        backgroundColor: _background,
        title: Center(
          child: Text(
            'Unit Converter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 36.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ));

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

  Widget _buildListCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int i) => categories[i],
      itemCount: categories.length,
    );
  }
}
