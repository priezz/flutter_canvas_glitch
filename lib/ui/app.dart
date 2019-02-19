import 'package:flutter/material.dart';

import 'widgets/donut_chart.dart';
import 'widgets/icons_list.dart';

const TITLE = 'Canvas Glitch Demo';

class App extends StatelessWidget {
  @override
  build(BuildContext context) => MaterialApp(
        routes: {
          '/': (context) => Home(),
          '/page2': (context) => MaterialButton(
                child: Text('Back'),
                onPressed: () => Navigator.of(context).pop(true),
              ),
        },
        initialRoute: '/',
        title: TITLE,
        theme: ThemeData.dark(),
      );
}

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  build(context) => Scaffold(
      appBar: AppBar(title: Text(TITLE)),
      body: Column(
        children: [
          Container(
              height: 200,
              child: DonutChart(() async {
                await Navigator.of(context).pushNamed('/page2');
                setState(() {});
              })),
          Expanded(child: IconsList()),
        ],
      ));
}
