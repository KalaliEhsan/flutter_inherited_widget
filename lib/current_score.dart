import 'package:flutter/cupertino.dart';

import 'info.dart';

class CurrentScore extends StatelessWidget {

  const CurrentScore();

  @override
  Widget build(BuildContext context) {
    print('CurrentScore rebuilt');
    final Info info = Info.of(context);

    return Container(
      child: Text(info?.score.toString()),
    );
  }
}