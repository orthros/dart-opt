import 'package:opt/opt.dart';
import 'package:test/test.dart';

main() {
  test("String Option Default Unset", () {
    StringOption so = new StringOption();
    expect(so.optionName, "");
    expect(so.defaultValue, '');
  });

  test("String Option Default Value 'something'", () {
    StringOption so =
        new StringOption(optionName: "name", defaultValue: 'something');
    expect(so.optionName, 'name');
    expect(so.defaultValue, "something");
  });

  test("String Option Default Value unset", () {
    StringOption so = new StringOption(optionName: "name");
    expect(so.optionName, "name");
    expect(so.defaultValue, '');
  });
}
