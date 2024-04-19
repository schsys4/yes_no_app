import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorTemes = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.pink,
  Colors.amber,
];

class AppTheme {

  final int selectedColor;

  // AppTheme({
  //   this.selectedColor = 0
  // });

  AppTheme({
    this.selectedColor = 0
  }):assert( selectedColor >= 0 && selectedColor <= _colorTemes.length - 1,
  'colors must be between  0 and ${_colorTemes.length}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTemes[selectedColor]
    );
  }

}