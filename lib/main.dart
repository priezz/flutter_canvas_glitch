import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  build(BuildContext context) => MaterialApp(
        home: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, i) => i == 0
              ? Container(
                  height: 120,
                  child: charts.PieChart([
                    charts.Series<int, int>(
                      id: 'donut',
                      domainFn: (_, i) => i,
                      measureFn: (_, i) => i + 1,
                      colorFn: (_, i) => charts.Color.fromHex(code: '#00ff00'),
                      data: [0, 1, 2],
                    )
                  ]),
                )
              : SvgPicture.asset(
                  'assets/icons/${icons[i % icons.length]}.svg',
                  allowDrawingOutsideViewBox: false,
                  color: Colors.white,
                  fit: BoxFit.contain,
                  height: 36,
                  width: 36,
                ),
        ),
      );
}

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
];
