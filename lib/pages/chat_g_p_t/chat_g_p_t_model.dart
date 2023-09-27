import '/components/initial_chat_g_p_t_message/initial_chat_g_p_t_message_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatGPTModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  dynamic chatHistory;

  String? inputContent = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListViewCurrent widget.
  ScrollController? listViewCurrent;
  // Stores action output result for [Custom Action - invokeChatGPT] action in Button widget.
  dynamic? chatResultCopy;
  // State field(s) for TextPrompt widget.
  TextEditingController? textPromptController;
  String? Function(BuildContext, String?)? textPromptControllerValidator;
  // Stores action output result for [Custom Action - invokeChatGPT] action in IconButton widget.
  dynamic? chatResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listViewCurrent = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    listViewCurrent?.dispose();
    textPromptController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
