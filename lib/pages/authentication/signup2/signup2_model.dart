import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Signup2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nationalID widget.
  TextEditingController? nationalIDController;
  String? Function(BuildContext, String?)? nationalIDControllerValidator;
  // State field(s) for fullName widget.
  TextEditingController? fullNameController1;
  String? Function(BuildContext, String?)? fullNameController1Validator;
  // State field(s) for fullName widget.
  TextEditingController? fullNameController2;
  String? Function(BuildContext, String?)? fullNameController2Validator;
  // State field(s) for DropDown widget.
  bool? dropDownValue;
  FormFieldController<bool>? dropDownValueController;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nationalIDController?.dispose();
    fullNameController1?.dispose();
    fullNameController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
