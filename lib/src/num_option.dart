import 'option.dart';

class NumOption implements Option {
  final String optionName;
  final num defaultValue;

  const NumOption({this.optionName = '', this.defaultValue = 0});
}

const NumOption numOption = const NumOption();
