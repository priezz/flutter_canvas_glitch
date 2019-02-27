# flutter_canvas_glitch

This repo contains the minimal code to represent the canvas redraw issue in Flutter apps, which rely on both `charts_flutter` and `flutter_svg` packages, running on Android. 

The issue could be reproduced in __release builds__ only. To do that tap on any donut chart sector and return back tapping anywhere on the black screen. In some cases it could take a few iterations to catch the glitch.
