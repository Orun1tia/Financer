import '/backend/backend.dart';
import '/components/pause_card/pause_card_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'gasto_recurrente1_model.dart';
export 'gasto_recurrente1_model.dart';

class GastoRecurrente1Widget extends StatefulWidget {
  const GastoRecurrente1Widget({super.key});

  @override
  State<GastoRecurrente1Widget> createState() => _GastoRecurrente1WidgetState();
}

class _GastoRecurrente1WidgetState extends State<GastoRecurrente1Widget> {
  late GastoRecurrente1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GastoRecurrente1Model());

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

    return StreamBuilder<List<GastosRecurrentesRecord>>(
      stream: queryGastosRecurrentesRecord(
        queryBuilder: (gastosRecurrentesRecord) =>
            gastosRecurrentesRecord.where(
          'email',
          isEqualTo: FFAppState().loggedEmail,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: SpinKitRing(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            ),
          );
        }
        List<GastosRecurrentesRecord>
            gastoRecurrente1GastosRecurrentesRecordList = snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primary,
          body: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 3.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 44.0, 20.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Selecciona tu \ngasto recurrente',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 28.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  buttonSize: 48.0,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 25.0,
                                  ),
                                  onPressed: () async {
                                    context.pop();
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 20.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController1 ??=
                                  FormFieldController<String>(null),
                              options:
                                  gastoRecurrente1GastosRecurrentesRecordList
                                      .map((e) => e.descripcion)
                                      .toList(),
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue1 = val),
                              width: 300.0,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lexend',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Seleccione su gasto recurrente ...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).accent3,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 2.0,
                              borderRadius: 20.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (kIsWeb) {
                                final datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: DateTime(1900),
                                  lastDate: getCurrentTimestamp,
                                  builder: (context, child) {
                                    return wrapInMaterialDatePickerTheme(
                                      context,
                                      child!,
                                      headerBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      headerForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      headerTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                      pickerBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      pickerForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      selectedDateTimeBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      selectedDateTimeForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      actionButtonForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      iconSize: 24.0,
                                    );
                                  },
                                );

                                if (datePickedDate != null) {
                                  safeSetState(() {
                                    _model.datePicked = DateTime(
                                      datePickedDate.year,
                                      datePickedDate.month,
                                      datePickedDate.day,
                                    );
                                  });
                                }
                              } else {
                                await DatePicker.showDatePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    safeSetState(() {
                                      _model.datePicked = date;
                                    });
                                  },
                                  currentTime: getCurrentTimestamp,
                                  minTime: DateTime(0, 0, 0),
                                  maxTime: getCurrentTimestamp,
                                  locale: LocaleType.values.firstWhere(
                                    (l) =>
                                        l.name ==
                                        FFLocalizations.of(context)
                                            .languageCode,
                                    orElse: () => LocaleType.en,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 300.0,
                              height: 51.0,
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
                                borderRadius: BorderRadius.circular(20.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: Icon(
                                        Icons.date_range_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 35.0,
                                      ),
                                    ),
                                    Text(
                                      dateTimeFormat(
                                        "d/M/y",
                                        _model.datePicked,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lexend',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 20.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController2 ??=
                                  FormFieldController<String>(null),
                              options: const ['Efectivo', 'Bancolombia', 'Paypal'],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue2 = val),
                              width: 300.0,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lexend',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Seleccione fuente...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).accent3,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 2.0,
                              borderRadius: 20.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                var gastosRecordReference =
                                    GastosRecord.collection.doc();
                                await gastosRecordReference
                                    .set(createGastosRecordData(
                                  monto:
                                      gastoRecurrente1GastosRecurrentesRecordList
                                          .where((e) =>
                                              e.descripcion ==
                                              _model.dropDownValue1)
                                          .toList()
                                          .first
                                          .monto,
                                  cuentaGasto:
                                      gastoRecurrente1GastosRecurrentesRecordList
                                          .where((e) =>
                                              e.descripcion ==
                                              _model.dropDownValue1)
                                          .toList()
                                          .first
                                          .cuentaGasto,
                                  bolsillo:
                                      gastoRecurrente1GastosRecurrentesRecordList
                                          .where((e) =>
                                              e.descripcion ==
                                              _model.dropDownValue1)
                                          .toList()
                                          .first
                                          .bolsillo,
                                  categoriaGasto:
                                      gastoRecurrente1GastosRecurrentesRecordList
                                          .where((e) =>
                                              e.descripcion ==
                                              _model.dropDownValue1)
                                          .toList()
                                          .first
                                          .tipoGasto,
                                  emailUsuario: FFAppState().loggedEmail,
                                  nombre: _model.dropDownValue1,
                                  fuente: _model.dropDownValue2,
                                  fecha: _model.datePicked,
                                ));
                                _model.gastoCreado =
                                    GastosRecord.getDocumentFromData(
                                        createGastosRecordData(
                                          monto:
                                              gastoRecurrente1GastosRecurrentesRecordList
                                                  .where((e) =>
                                                      e.descripcion ==
                                                      _model.dropDownValue1)
                                                  .toList()
                                                  .first
                                                  .monto,
                                          cuentaGasto:
                                              gastoRecurrente1GastosRecurrentesRecordList
                                                  .where((e) =>
                                                      e.descripcion ==
                                                      _model.dropDownValue1)
                                                  .toList()
                                                  .first
                                                  .cuentaGasto,
                                          bolsillo:
                                              gastoRecurrente1GastosRecurrentesRecordList
                                                  .where((e) =>
                                                      e.descripcion ==
                                                      _model.dropDownValue1)
                                                  .toList()
                                                  .first
                                                  .bolsillo,
                                          categoriaGasto:
                                              gastoRecurrente1GastosRecurrentesRecordList
                                                  .where((e) =>
                                                      e.descripcion ==
                                                      _model.dropDownValue1)
                                                  .toList()
                                                  .first
                                                  .tipoGasto,
                                          emailUsuario:
                                              FFAppState().loggedEmail,
                                          nombre: _model.dropDownValue1,
                                          fuente: _model.dropDownValue2,
                                          fecha: _model.datePicked,
                                        ),
                                        gastosRecordReference);
                                FFAppState().Puntaje =
                                    FFAppState().Puntaje + 100;
                                safeSetState(() {});
                                if ((FFAppState().Puntaje == 500) ||
                                    (FFAppState().Puntaje == 1000)) {
                                  if (FFAppState().Puntaje == 500) {
                                    _model.soundPlayer1 ??= AudioPlayer();
                                    if (_model.soundPlayer1!.playing) {
                                      await _model.soundPlayer1!.stop();
                                    }
                                    _model.soundPlayer1!.setVolume(1.0);
                                    _model.soundPlayer1!
                                        .setAsset(
                                            'assets/audios/ta-da-brass-ensemble-fast-soundroll-1-00-01.mp3')
                                        .then(
                                            (_) => _model.soundPlayer1!.play());
                                  } else {
                                    _model.soundPlayer2 ??= AudioPlayer();
                                    if (_model.soundPlayer2!.playing) {
                                      await _model.soundPlayer2!.stop();
                                    }
                                    _model.soundPlayer2!.setVolume(1.0);
                                    _model.soundPlayer2!
                                        .setAsset(
                                            'assets/audios/tv-talk-show-intro-theme-richard-bodgers-1-00-10.mp3')
                                        .then(
                                            (_) => _model.soundPlayer2!.play());
                                  }

                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: const SizedBox(
                                          height: 250.0,
                                          width: 350.0,
                                          child: PauseCardWidget(),
                                        ),
                                      );
                                    },
                                  );
                                }
                                _model.logeado = await queryUsuarioRecordOnce(
                                  queryBuilder: (usuarioRecord) =>
                                      usuarioRecord.where(
                                    'email',
                                    isEqualTo: FFAppState().loggedEmail,
                                  ),
                                  singleRecord: true,
                                ).then((s) => s.firstOrNull);

                                await _model.logeado!.reference.update({
                                  ...mapToFirestore(
                                    {
                                      'puntaje': FieldValue.increment(100),
                                    },
                                  ),
                                });

                                context.pushNamed(
                                  'GastoComplete',
                                  queryParameters: {
                                    'nombre': serializeParam(
                                      _model.gastoCreado?.nombre,
                                      ParamType.String,
                                    ),
                                    'fecha': serializeParam(
                                      _model.gastoCreado?.fecha,
                                      ParamType.DateTime,
                                    ),
                                    'bolsillo': serializeParam(
                                      _model.gastoCreado?.bolsillo,
                                      ParamType.String,
                                    ),
                                    'categoria': serializeParam(
                                      _model.gastoCreado?.categoriaGasto,
                                      ParamType.String,
                                    ),
                                    'tipocuenta': serializeParam(
                                      _model.gastoCreado?.cuentaGasto,
                                      ParamType.String,
                                    ),
                                    'monto': serializeParam(
                                      _model.gastoCreado?.monto,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );

                                safeSetState(() {});
                              },
                              text: 'Añadir gasto',
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 70.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Lexend',
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'Presiona arriba para continuar',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lexend',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
