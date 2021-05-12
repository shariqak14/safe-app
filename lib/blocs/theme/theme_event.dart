import 'package:listar_flutter/configs/config.dart';
import 'package:listar_flutter/models/model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ThemeEvent {}

class ChangeTheme extends ThemeEvent {
  final ThemeModel theme;
  final String font;
  final DarkOption darkOption;

  ChangeTheme({
    this.theme,
    this.font,
    this.darkOption,
  });
}

class ChangeDarkOption extends ThemeEvent {
  final DarkOption darkOption;

  ChangeDarkOption({this.darkOption});
}
