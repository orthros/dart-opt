import 'option.dart';

class BoolOption implements Option {
  final String optionName;
  final bool defaultValue;

  const BoolOption({this.optionName = '', this.defaultValue = false});
}

const BoolOption boolOption = const BoolOption();
