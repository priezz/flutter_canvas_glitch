import 'package:charts_flutter/flutter.dart' as Charts;
import 'package:flutter/material.dart';

class DonutChart extends StatelessWidget {
  final Function onTap;

  static final chartMargin = 8;

  DonutChart(this.onTap);

  @override
  build(context) {
    Charts.Series series = Charts.Series<int, int>(
      id: 'donut',
      domainFn: (item, i) => i,
      measureFn: (item, _) => 100,
      colorFn: (item, _) => colorsMap[item],
      data: [0, 1, 2],
    );

    return Charts.PieChart(
      [series],
      animate: true,
      defaultRenderer: Charts.ArcRendererConfig(
        arcWidth: 30,
        strokeWidthPx: 0.01,
      ),
      layoutConfig: Charts.LayoutConfig(
        bottomMarginSpec: Charts.MarginSpec.fixedPixel(chartMargin),
        rightMarginSpec: null,
        leftMarginSpec: null,
        topMarginSpec: Charts.MarginSpec.fixedPixel(chartMargin),
      ),
      selectionModels: [
        Charts.SelectionModelConfig(
          type: Charts.SelectionModelType.info,
          changedListener: (Charts.SelectionModel model) => onTap(),
        ),
      ],
    );
  }
}

class DonutChartItem {
  final int index;
  DonutChartItem(this.index);
}

Map<int, Charts.Color> colorsMap = {
  0: Charts.ColorUtil.fromDartColor(Colors.green),
  1: Charts.ColorUtil.fromDartColor(Colors.yellow),
  2: Charts.ColorUtil.fromDartColor(Colors.orange),
};
