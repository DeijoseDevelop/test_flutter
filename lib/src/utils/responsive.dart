import 'dart:math';
import 'package:flutter/material.dart';

// this class take care of the manipulate device measurements
class Responsive {
  double? _width, _height, _diagonal;

  double? get width => _width;
  double? get height => _height;
  double? get diagonal => _diagonal;

  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    _width = size.width;
    _height = size.height;
    _diagonal = sqrt(pow(_width!, 2) + pow(_height!, 2));
  }

  // this function calculate the width of the screen and return the measure of that percentage
  // example: screen.width = 400
  // widthResponsive(50) = 200
  double widthResponsive(num percent) => width! * percent / 100;

  // this function calculate the height of the screen and return the measure of that percentage
  // example: screen.width = 600
  // widthResponsive(30) = 200
  double heightResponsive(num percent) => height! * percent / 100;

  // this function calculate the diagonal of the screen and return the measure of that percentage
  // example: screen.width = 500
  // widthResponsive(80) = 400
  double diagonalResponsive(num percent) => diagonal! * percent / 100;
}
