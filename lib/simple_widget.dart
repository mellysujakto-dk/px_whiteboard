import 'package:flutter/material.dart';
import 'package:px_whiteboard/analytic_widget.dart';

class SimpleWidget extends CommonStatefulWidget {
  @override
  void setStateLocal(void Function() fn) {
    fn();
    super.setStateLocal(fn);
  }

  @override
  Widget build(BuildContext context) {
    bool flag = true;

    return Center(
      child: Container(
        color: flag ? Colors.blue : Colors.white,
        child: TextButton(
          onPressed: () {
            setStateLocal(() {
              flag = !flag;
            });
            print('pressed $flag');
          },
          child: Text('press me'),
        ),
      ),
    );
  }
}
