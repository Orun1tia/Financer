import '/backend/backend.dart';
import '/components/pause_card/pause_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'gasto_nuevo4_model.dart';
export 'gasto_nuevo4_model.dart';

class GastoNuevo4Widget extends StatefulWidget {
  const GastoNuevo4Widget({
    super.key,
    required this.amount,
    required this.typeaccount,
    required this.typebudget,
    required this.name,
    required this.date,
    required this.tipoIngreso,
    required this.recurrente,
  });

  final double? amount;
  final String? typeaccount;
  final String? typebudget;
  final String? name;
  final DateTime? date;
  final String? tipoIngreso;
  final bool? recurrente;

  @override
  State<GastoNuevo4Widget> createState() => _GastoNuevo4WidgetState();
}

class _GastoNuevo4WidgetState extends State<GastoNuevo4Widget> {
  late GastoNuevo4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GastoNuevo4Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primary,
      body: Form(
        key: _model.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Regresar',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lexend',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 41.0,
                              icon: Icon(
                                Icons.close_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('HomePage');
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Ayudanos a\norganizar tu gasto',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 26.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Selecciona una categoria',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Material(
                color: Colors.transparent,
                elevation: 3.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.72,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Container(
                          width: 346.0,
                          height: 71.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent2,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/mascara-beauty-svgrepo-com_1.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Belleza',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    65.0, 0.0, 0.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    safeSetState(() =>
                                        FFAppState().gastonuevo4toggle1 =
                                            !FFAppState().gastonuevo4toggle1);
                                    if (FFAppState().gastonuevo4toggle1) {
                                      FFAppState().gastonuevo4toggle2 = false;
                                      FFAppState().gastonuevo4toggle3 = false;
                                      FFAppState().gastonuevo4toggle4 = false;
                                      safeSetState(() {});
                                    }
                                  },
                                  value: FFAppState().gastonuevo4toggle1,
                                  onIcon: Icon(
                                    Icons.check_circle,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 30.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.check_circle_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Container(
                          width: 346.0,
                          height: 71.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent2,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/tshirt-svgrepo-com_1.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ropa',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    86.0, 0.0, 0.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    safeSetState(() =>
                                        FFAppState().gastonuevo4toggle2 =
                                            !FFAppState().gastonuevo4toggle2);
                                    if (FFAppState().gastonuevo4toggle2) {
                                      FFAppState().gastonuevo4toggle1 = false;
                                      FFAppState().gastonuevo4toggle3 = false;
                                      FFAppState().gastonuevo4toggle4 = false;
                                      safeSetState(() {});
                                    }
                                  },
                                  value: FFAppState().gastonuevo4toggle2,
                                  onIcon: Icon(
                                    Icons.check_circle,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 30.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.check_circle_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Container(
                          width: 346.0,
                          height: 71.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent2,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Vector.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Comida',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    60.0, 0.0, 0.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    safeSetState(() =>
                                        FFAppState().gastonuevo4toggle3 =
                                            !FFAppState().gastonuevo4toggle3);
                                    if (FFAppState().gastonuevo4toggle3) {
                                      FFAppState().gastonuevo4toggle1 = false;
                                      FFAppState().gastonuevo4toggle2 = false;
                                      FFAppState().gastonuevo4toggle4 = false;
                                      safeSetState(() {});
                                    }
                                  },
                                  value: FFAppState().gastonuevo4toggle3,
                                  onIcon: Icon(
                                    Icons.check_circle,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 30.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.check_circle_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Container(
                          width: 346.0,
                          height: 71.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent2,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/menu.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Otros',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    85.0, 0.0, 0.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    safeSetState(() =>
                                        FFAppState().gastonuevo4toggle4 =
                                            !FFAppState().gastonuevo4toggle4);
                                    if (FFAppState().gastonuevo4toggle4) {
                                      FFAppState().gastonuevo4toggle1 = false;
                                      FFAppState().gastonuevo4toggle2 = false;
                                      FFAppState().gastonuevo4toggle3 = false;
                                      safeSetState(() {});
                                    }
                                  },
                                  value: FFAppState().gastonuevo4toggle4,
                                  onIcon: Icon(
                                    Icons.check_circle,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 30.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.check_circle_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 100.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      if (FFAppState().gastonuevo4toggle1) {
                                        return false;
                                      } else if (FFAppState()
                                          .gastonuevo4toggle2) {
                                        return false;
                                      } else if (FFAppState()
                                          .gastonuevo4toggle3) {
                                        return false;
                                      } else if (FFAppState()
                                          .gastonuevo4toggle4) {
                                        return false;
                                      } else {
                                        return true;
                                      }
                                    }()
                                        ? null
                                        : () async {
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }

                                            await GastosRecord.collection
                                                .doc()
                                                .set(createGastosRecordData(
                                                  monto: widget.amount,
                                                  cuentaGasto:
                                                      widget.typeaccount,
                                                  bolsillo: widget.typebudget,
                                                  categoriaGasto: () {
                                                    if (FFAppState()
                                                        .gastonuevo4toggle1) {
                                                      return 'Belleza';
                                                    } else if (FFAppState()
                                                        .gastonuevo4toggle2) {
                                                      return 'Ropa';
                                                    } else if (FFAppState()
                                                        .gastonuevo4toggle3) {
                                                      return 'Comida';
                                                    } else if (FFAppState()
                                                        .gastonuevo4toggle4) {
                                                      return 'Otros';
                                                    } else {
                                                      return 'null';
                                                    }
                                                  }(),
                                                  emailUsuario:
                                                      FFAppState().loggedEmail,
                                                  nombre: widget.name,
                                                  fuente: widget.tipoIngreso,
                                                  fecha: widget.date,
                                                ));
                                            if (widget.recurrente!) {
                                              await GastosRecurrentesRecord
                                                  .collection
                                                  .doc()
                                                  .set(
                                                      createGastosRecurrentesRecordData(
                                                    monto: widget.amount,
                                                    fecha: widget.date,
                                                    cuentaGasto:
                                                        widget.typeaccount,
                                                    descripcion: widget.name,
                                                    tipoGasto: () {
                                                      if (FFAppState()
                                                          .gastonuevo4toggle1) {
                                                        return 'Belleza';
                                                      } else if (FFAppState()
                                                          .gastonuevo4toggle2) {
                                                        return 'Ropa';
                                                      } else if (FFAppState()
                                                          .gastonuevo4toggle3) {
                                                        return 'Comida';
                                                      } else if (FFAppState()
                                                          .gastonuevo4toggle4) {
                                                        return 'Otros';
                                                      } else {
                                                        return 'null';
                                                      }
                                                    }(),
                                                    bolsillo:
                                                        widget.typebudget,
                                                    email: FFAppState()
                                                        .loggedEmail,
                                                  ));
                                            }
                                            FFAppState().Puntaje =
                                                FFAppState().Puntaje + 100;
                                            safeSetState(() {});
                                            if ((FFAppState().Puntaje == 500) ||
                                                (FFAppState().Puntaje ==
                                                    1000)) {
                                              if (FFAppState().Puntaje == 500) {
                                                _model.soundPlayer1 ??=
                                                    AudioPlayer();
                                                if (_model
                                                    .soundPlayer1!.playing) {
                                                  await _model.soundPlayer1!
                                                      .stop();
                                                }
                                                _model.soundPlayer1!
                                                    .setVolume(1.0);
                                                _model.soundPlayer1!
                                                    .setAsset(
                                                        'assets/audios/ta-da-brass-ensemble-fast-soundroll-1-00-01.mp3')
                                                    .then((_) => _model
                                                        .soundPlayer1!
                                                        .play());
                                              } else {
                                                _model.soundPlayer2 ??=
                                                    AudioPlayer();
                                                if (_model
                                                    .soundPlayer2!.playing) {
                                                  await _model.soundPlayer2!
                                                      .stop();
                                                }
                                                _model.soundPlayer2!
                                                    .setVolume(1.0);
                                                _model.soundPlayer2!
                                                    .setAsset(
                                                        'assets/audios/tv-talk-show-intro-theme-richard-bodgers-1-00-10.mp3')
                                                    .then((_) => _model
                                                        .soundPlayer2!
                                                        .play());
                                              }

                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: const SizedBox(
                                                      height: 250.0,
                                                      width: 350.0,
                                                      child: PauseCardWidget(),
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                            _model.logeado =
                                                await queryUsuarioRecordOnce(
                                              queryBuilder: (usuarioRecord) =>
                                                  usuarioRecord.where(
                                                'email',
                                                isEqualTo:
                                                    FFAppState().loggedEmail,
                                              ),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);

                                            await _model.logeado!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'puntaje':
                                                      FieldValue.increment(100),
                                                },
                                              ),
                                            });

                                            context.pushNamed(
                                              'GastoComplete',
                                              queryParameters: {
                                                'nombre': serializeParam(
                                                  widget.name,
                                                  ParamType.String,
                                                ),
                                                'fecha': serializeParam(
                                                  widget.date,
                                                  ParamType.DateTime,
                                                ),
                                                'bolsillo': serializeParam(
                                                  widget.typebudget,
                                                  ParamType.String,
                                                ),
                                                'categoria': serializeParam(
                                                  widget.tipoIngreso,
                                                  ParamType.String,
                                                ),
                                                'tipocuenta': serializeParam(
                                                  widget.typeaccount,
                                                  ParamType.String,
                                                ),
                                                'monto': serializeParam(
                                                  widget.amount,
                                                  ParamType.double,
                                                ),
                                              }.withoutNulls,
                                            );

                                            safeSetState(() {});
                                          },
                                    text: 'Finalizar',
                                    options: FFButtonOptions(
                                      width: 250.0,
                                      height: 50.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lexend',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
