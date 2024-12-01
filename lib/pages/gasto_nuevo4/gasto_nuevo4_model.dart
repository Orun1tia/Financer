import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gasto_nuevo4_widget.dart' show GastoNuevo4Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class GastoNuevo4Model extends FlutterFlowModel<GastoNuevo4Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsuarioRecord? logeado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
