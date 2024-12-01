import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'gasto_recurrente1_widget.dart' show GastoRecurrente1Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class GastoRecurrente1Model extends FlutterFlowModel<GastoRecurrente1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  GastosRecord? gastoCreado;
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsuarioRecord? logeado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
