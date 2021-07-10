import 'package:flutter/cupertino.dart';

class Info extends InheritedWidget {

  const Info({
    Key key,
    @required this.score,
    @required Widget child,
  }) : assert(score != null),
        assert(child != null),
        super(key: key, child: child);

  final int score;

  static Info of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Info>();
  }

  @override
  bool updateShouldNotify(covariant Info oldWidget) {
    return oldWidget.score != score;
  }
}