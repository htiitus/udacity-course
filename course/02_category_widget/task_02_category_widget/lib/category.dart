import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          height: _rowHeight,
          child: InkWell(
            borderRadius: _borderRadius,
            onTap: () {
              print('I was tapped!');
            },
            splashColor: color,
            highlightColor: color,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                      name,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 24.0,
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
