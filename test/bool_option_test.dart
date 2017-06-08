import 'package:opt/opt.dart';
import 'package:test/test.dart';

main() {
  test("BoolOption No Default Values", () {
    BoolOption bo = new BoolOption();
    expect(bo.optionName, "");
    expect(bo.defaultValue, false);
  });

  test("BoolOption No Default Value", () {
    BoolOption bo = new BoolOption(optionName: "name");
    expect(bo.optionName, "name");
    expect(bo.defaultValue, false);
  });

  test("Bool Option Default Value False", () {
    BoolOption bo = new BoolOption(optionName: "name", defaultValue: false);
    expect(bo.optionName, "name");
    expect(bo.defaultValue, false);
  });

  test("Bool Option Default Value True", () {
    BoolOption bo = new BoolOption(optionName: "name", defaultValue: true);
    expect(bo.optionName, "name");
    expect(bo.defaultValue, true);
  });
}
