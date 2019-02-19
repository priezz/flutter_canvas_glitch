import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const List<String> icons = [
  'bank',
  'broadband',
  'car',
  'debt',
  'beer',
  'education',
  'family',
  'fun',
  'going_out',
  'groceries',
  'health_care',
  'holiday',
  'home',
  'income',
  'insurance',
  'other',
  'pets',
  'phone',
  'recurring',
  'housing',
  'salary',
  'saving',
  'shopping',
  'sports',
  'student_loan',
  'tax',
  'total',
  'transport',
  'tv',
  'utilities',
  'variable',
];

class AppIcon extends StatelessWidget {
  final Color color;
  final String name;
  final double size;

  AppIcon(this.name, {this.size = 24, this.color = const Color(0x4DFFFFFF)});

  @override
  build(context) => SvgPicture.asset(
        'assets/icons/$name.svg',
        allowDrawingOutsideViewBox: false,
        color: color,
        fit: BoxFit.contain,
        height: size,
        width: size,
      );
}
