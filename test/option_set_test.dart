library opttest;

import 'package:opt/opt.dart';
import 'package:test/test.dart';

main() {
  test("Option Set No Values to dictionary", () {
    var mapValue = new Map<String, String>();
    var os = new MocOptionSet(mapValue);

    expect(os.myString, "defaultValue");
    expect(os.myNum, 10);
    expect(os.myBool, false);
  });

  test("Option Set All Values to dictionary", () {
    var mapValue = new Map<String, dynamic>();
    mapValue["myASDF"] = "not default value";
    mapValue["myNumber"] = -1;
    mapValue["myBoolean"] = true;
    mapValue["unnamedBool"] = true;
    mapValue["unnamedString"] = "a different value";
    mapValue["unnamedNum"] = -2;

    var os = new MocOptionSet(mapValue);
    expect(os.myString, "not default value");
    expect(os.myNum, -1);
    expect(os.myBool, true);
    expect(os.unnamedString, "a different value");
    expect(os.unnamedBool, true);
    expect(os.unnamedNum, -2);
  });
}

class MocOptionSet extends OptionSet {
  @StringOption(optionName: "myASDF", defaultValue: "defaultValue")
  String myString;

  @NumOption(optionName: "myNumber", defaultValue: 10)
  num myNum;

  @BoolOption(optionName: "myBoolean")
  bool myBool;

  @boolOption
  bool unnamedBool;

  @stringOption
  String unnamedString;

  @numOption
  num unnamedNum;

  MocOptionSet(Map<String, dynamic> theMap) : super(theMap);
}
