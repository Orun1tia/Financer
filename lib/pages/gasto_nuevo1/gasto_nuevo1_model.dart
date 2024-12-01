import '/flutter_flow/flutter_flow_util.dart';
import 'gasto_nuevo1_widget.dart' show GastoNuevo1Widget;
import 'package:flutter/material.dart';

class GastoNuevo1Model extends FlutterFlowModel<GastoNuevo1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese un monto';
    }

    return null;
  }

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
