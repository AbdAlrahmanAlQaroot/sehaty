import '/components/notifications_card/notifications_card_widget.dart';
import '/components/notifications_card_female/notifications_card_female_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for notificationsCard component.
  late NotificationsCardModel notificationsCardModel;
  // Model for notificationsCardFemale component.
  late NotificationsCardFemaleModel notificationsCardFemaleModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    notificationsCardModel =
        createModel(context, () => NotificationsCardModel());
    notificationsCardFemaleModel =
        createModel(context, () => NotificationsCardFemaleModel());
  }

  void dispose() {
    unfocusNode.dispose();
    notificationsCardModel.dispose();
    notificationsCardFemaleModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
