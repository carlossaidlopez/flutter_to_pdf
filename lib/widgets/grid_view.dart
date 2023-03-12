import 'package:flutter/widgets.dart' show GridView, EdgeInsets;

import 'package:pdf/widgets.dart' as pw show GridView, Widget, EdgeInsets;

import '/args/edge_insets.dart';


extension GridViewConverter on GridView {
  pw.GridView toPdfWidget(List<pw.Widget> children) => pw.GridView(
    crossAxisCount: childrenDelegate.estimatedChildCount!, // TODO: check if this is works
    padding: (padding as EdgeInsets?)?.toPdfEdgeInsets() ?? pw.EdgeInsets.zero,
    children: children,
  );
}
