import 'package:flutter/cupertino.dart';

class InheritedCounter extends InheritedWidget {
  final Map _counter = {'val': 0};
  final Widget child;

  InheritedCounter({this.child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    increament();
    return true;
  }

  increament() {
    _counter['val']++;
  }

  get counter => _counter['val'];

  /*
  A common convention is to create a method named of in the class that extends InheritedWidget.
   It accepts a parameter of type BuildContext and calls the dependOnInheritedWidgetOfExactType
    method to get an instance of the nearest widget whose type is Info.
   */
  static InheritedCounter of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
}
