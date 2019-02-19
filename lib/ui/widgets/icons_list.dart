import 'package:flutter/material.dart';

import 'icons.dart';

class IconsList extends StatelessWidget {
  @override
  build(BuildContext context) => ListView.builder(
        itemCount: icons.length,
        itemBuilder: (context, i) => ListItem(icons[i], i),
      );
}

class ListItem extends StatelessWidget {
  final String item;
  final int index;
  ListItem(this.item, this.index);

  @override
  build(BuildContext context) => Row(
        children: [
          Container(width: 16),
          AppIcon(item, color: Colors.white, size: 32),
          Container(width: 16),
          Text('Item $index'),
        ],
      );
}
