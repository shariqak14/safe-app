import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listar_flutter/app.dart';
import 'package:listar_flutter/utils/utils.dart';

class AppDelegate extends BlocDelegate {
  ///Support Development
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    UtilLogger.log('BLOC EVENT', event);
  }

  ///Support Development
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    UtilLogger.log('BLOC TRANSITION', transition);
  }

  ///Support Development
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    UtilLogger.log('BLOC ERROR', error);
  }
}

void main() {
  BlocSupervisor.delegate = AppDelegate();
  runApp(App());
}
