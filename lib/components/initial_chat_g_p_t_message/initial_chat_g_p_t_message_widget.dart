import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'initial_chat_g_p_t_message_model.dart';
export 'initial_chat_g_p_t_message_model.dart';

class InitialChatGPTMessageWidget extends StatefulWidget {
  const InitialChatGPTMessageWidget({Key? key}) : super(key: key);

  @override
  _InitialChatGPTMessageWidgetState createState() =>
      _InitialChatGPTMessageWidgetState();
}

class _InitialChatGPTMessageWidgetState
    extends State<InitialChatGPTMessageWidget> {
  late InitialChatGPTMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialChatGPTMessageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: () {
                if (MediaQuery.sizeOf(context).width >= 1170.0) {
                  return 700.0;
                } else if (MediaQuery.sizeOf(context).width <= 470.0) {
                  return 330.0;
                } else {
                  return 530.0;
                }
              }(),
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectionArea(
                      child: AutoSizeText(
                    'مرحبًا! أنا مساعدكم الطبي الافتراضي هنا للإجابة على استفساراتكم الطبية. ',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Noto Naskh Arabic',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          lineHeight: 1.5,
                        ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
