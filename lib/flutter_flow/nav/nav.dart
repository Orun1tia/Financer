import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LoginPageWidget(),
        ),
        FFRoute(
          name: 'loginPage',
          path: '/loginPage',
          builder: (context, params) => const LoginPageWidget(),
        ),
        FFRoute(
          name: 'registerAccount',
          path: '/registerAccount',
          builder: (context, params) => const RegisterAccountWidget(),
        ),
        FFRoute(
          name: 'completeProfile',
          path: '/completeProfile',
          builder: (context, params) => CompleteProfileWidget(
            id: params.getParam(
              'id',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['usuario'],
            ),
          ),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'MY_Budgets',
          path: '/mYBudgets',
          builder: (context, params) => const MYBudgetsWidget(),
        ),
        FFRoute(
          name: 'paymentDetails',
          path: '/paymentDetails',
          builder: (context, params) => const PaymentDetailsWidget(),
        ),
        FFRoute(
          name: 'MY_profilePage',
          path: '/mYProfilePage',
          builder: (context, params) => const MYProfilePageWidget(),
        ),
        FFRoute(
          name: 'budgetDetails',
          path: '/budgetDetails',
          builder: (context, params) => const BudgetDetailsWidget(),
        ),
        FFRoute(
          name: 'GastoComplete',
          path: '/gastoComplete',
          builder: (context, params) => GastoCompleteWidget(
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
            fecha: params.getParam(
              'fecha',
              ParamType.DateTime,
            ),
            bolsillo: params.getParam(
              'bolsillo',
              ParamType.String,
            ),
            categoria: params.getParam(
              'categoria',
              ParamType.String,
            ),
            tipocuenta: params.getParam(
              'tipocuenta',
              ParamType.String,
            ),
            monto: params.getParam(
              'monto',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'GastoNuevo1',
          path: '/gastoNuevo1',
          builder: (context, params) => const GastoNuevo1Widget(),
        ),
        FFRoute(
          name: 'transaction_EDIT',
          path: '/transactionEDIT',
          builder: (context, params) => const TransactionEDITWidget(),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => const EditProfileWidget(),
        ),
        FFRoute(
          name: 'changePassword',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'notificationsSettings',
          path: '/notificationsSettings',
          builder: (context, params) => const NotificationsSettingsWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'HomePage')
              : const HomePageWidget(),
        ),
        FFRoute(
          name: 'IngresoGasto',
          path: '/IngresoGasto',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'IngresoGasto')
              : const IngresoGastoWidget(),
        ),
        FFRoute(
          name: 'AgregarGasto',
          path: '/AgregarGasto',
          builder: (context, params) => const AgregarGastoWidget(),
        ),
        FFRoute(
          name: 'GastoNuevo2',
          path: '/gastoNuevo2',
          builder: (context, params) => GastoNuevo2Widget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
            tipoIngreso: params.getParam(
              'tipoIngreso',
              ParamType.String,
            ),
            typeaccount: params.getParam(
              'typeaccount',
              ParamType.String,
            ),
            recurrente: params.getParam(
              'recurrente',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'GastoNuevo3',
          path: '/gastoNuevo3',
          builder: (context, params) => GastoNuevo3Widget(
            typeaccount: params.getParam(
              'typeaccount',
              ParamType.String,
            ),
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
            tipoIngreso: params.getParam(
              'tipoIngreso',
              ParamType.String,
            ),
            recurrente: params.getParam(
              'recurrente',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'GastoNuevo4',
          path: '/gastoNuevo4',
          builder: (context, params) => GastoNuevo4Widget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            typeaccount: params.getParam(
              'typeaccount',
              ParamType.String,
            ),
            typebudget: params.getParam(
              'typebudget',
              ParamType.String,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
            tipoIngreso: params.getParam(
              'tipoIngreso',
              ParamType.String,
            ),
            recurrente: params.getParam(
              'recurrente',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'registerAccountCopy',
          path: '/registerAccountCopy',
          builder: (context, params) => const RegisterAccountCopyWidget(),
        ),
        FFRoute(
          name: 'MiPersona',
          path: '/miPersona',
          builder: (context, params) => const MiPersonaWidget(),
        ),
        FFRoute(
          name: 'MiNegocio',
          path: '/miNegocio',
          builder: (context, params) => const MiNegocioWidget(),
        ),
        FFRoute(
          name: 'MiPerfil',
          path: '/miPerfil',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'MiPerfil')
              : const MiPerfilWidget(),
        ),
        FFRoute(
          name: 'GastoNuevo1-1',
          path: '/gastoNuevo11',
          builder: (context, params) => GastoNuevo11Widget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            recurrente: params.getParam(
              'recurrente',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'IngresoNuevo1',
          path: '/ingresoNuevo1',
          builder: (context, params) => const IngresoNuevo1Widget(),
        ),
        FFRoute(
          name: 'IngresoNuevo2',
          path: '/ingresoNuevo2',
          builder: (context, params) => IngresoNuevo2Widget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'IngresoComplete',
          path: '/ingresoComplete',
          builder: (context, params) => IngresoCompleteWidget(
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
            monto: params.getParam(
              'monto',
              ParamType.double,
            ),
            tipocuenta: params.getParam(
              'tipocuenta',
              ParamType.String,
            ),
            formatoplata: params.getParam(
              'formatoplata',
              ParamType.String,
            ),
            fecha: params.getParam(
              'fecha',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'GastoRecurrente1',
          path: '/gastoRecurrente1',
          builder: (context, params) => const GastoRecurrente1Widget(),
        ),
        FFRoute(
          name: 'MovimientoGasto',
          path: '/movimientoGasto',
          builder: (context, params) => MovimientoGastoWidget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            typeaccount: params.getParam(
              'typeaccount',
              ParamType.String,
            ),
            typebudget: params.getParam(
              'typebudget',
              ParamType.String,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
            tipoIngreso: params.getParam(
              'tipoIngreso',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'MovimientoIngreso',
          path: '/movimientoIngreso',
          builder: (context, params) => MovimientoIngresoWidget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            typeaccount: params.getParam(
              'typeaccount',
              ParamType.String,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
            tipoIngreso: params.getParam(
              'tipoIngreso',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primary,
                  child: Image.asset(
                    'assets/images/Financer_Logo_Mesa_de_trabajo_1-02.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
