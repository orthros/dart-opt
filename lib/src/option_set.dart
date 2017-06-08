import 'dart:mirrors';
import 'option.dart';

abstract class OptionSet {
  OptionSet(Map<String, dynamic> map) {
    ClassMirror classMirror = reflectClass(this.runtimeType);
    var myInstance = reflect(this);
    classMirror.declarations.values
        .where((DeclarationMirror mirror) => mirror is VariableMirror)
        .forEach((VariableMirror variableMirror) {
      var metaOption = variableMirror.metadata
          .where((InstanceMirror meta) =>
              meta.hasReflectee && meta.reflectee is Option)
          .first;
      if (metaOption != null) {
        var option = metaOption.reflectee as Option;
        var optionName = (option.optionName ?? '').isEmpty
            ? MirrorSystem.getName(variableMirror.simpleName)
            : option.optionName;
        var valueToSet = option.defaultValue;
        if (map.containsKey(optionName)) {
          valueToSet = map[optionName];
        }
        myInstance.setField(variableMirror.simpleName, valueToSet);
      }
    });
  }
}
