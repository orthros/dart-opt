# dart_opt

This exists to serve as an  option set generator for a Dart.

The general idea is that for an application there may need to be an object (or several) that you read in a set of key value pairs for and pass into a class.

## Note: 
I know there are other ways of generating the constructor body for a class automatically using tools like `source_gen`, but I choose to do this the "manual" way as I find it a good exercise in a language to explore their reflection/mirrors api and other language level features like annotations/attributes

## Use  
Write your class as a subclass of OptionSet and annotate the 
member variables you wish to be auto populated from the Map with their appropriate type

Example (from the tests)
```dart
class MocOptionSet extends OptionSet {
  @StringOption(optionName: "myStringField", defaultValue: "defaultValue")
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
```

In this example, the to provide a value for the field `myBool` the Map would need a key: myBoolean and a `bool` value.

To pass a value for the field `unnamedBool` the Map would need a key: unnamedBool with a `bool` value. 

## TODO
- [ ] Add more api-level documentation
- [ ] Add more unit tests
- [ ] Support Enum types 