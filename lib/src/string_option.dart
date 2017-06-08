import 'option.dart';

class StringOption implements Option {
  final String optionName;

  final String defaultValue;

  const StringOption({this.optionName = '', this.defaultValue = ''});
}

const StringOption stringOption = const StringOption();
