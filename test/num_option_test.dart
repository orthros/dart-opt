import 'package:opt/opt.dart';
import 'package:test/test.dart';

main() {
  test("NumOption Default", () {
    NumOption no = new NumOption();
    expect(no.optionName, "");
    expect(no.defaultValue, 0);
  });

  test("NumOption Default unset", () {
    NumOption no = new NumOption(optionName: "name");
    expect(no.optionName, "name");
    expect(no.defaultValue, 0);
  });

  test("NumOption Default Set 0", () {
    NumOption no = new NumOption(optionName: "name", defaultValue: 10);
    expect(no.optionName, "name");
    expect(no.defaultValue, 10);
  });
}
