import '/components/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrescriptionsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for searchBar component.
  late SearchBarModel searchBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    searchBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
