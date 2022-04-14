import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class CommonStatefulWidget extends StatefulWidget {
  const CommonStatefulWidget({Key key}) : super(key: key);
  @override
  State<CommonStatefulWidget> createState() => _CommonStatefulWidgetState();

  Widget build(BuildContext context);
  void initState() {}
  void activate() {}
  void deactivate() {}
  void debugFillProperties(DiagnosticPropertiesBuilder properties);
  void didChangeDependencies() {}
  void didUpdateWidget(covariant CommonStatefulWidget oldWidget) {}
  void dispose() {}
  void reassemble() {}
  DiagnosticsNode toDiagnosticsNode({String name, DiagnosticsTreeStyle style});
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info});
  String toStringShort();

  void setStateLocal(void Function() fn) {}
}

class _CommonStatefulWidgetState extends State<CommonStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    try {
      // setState(() {
      //   widget.build(context);
      // });
      return widget.build(context);
    } catch (e) {
      crashlyticMethod();
      return widget.build(context);
    }
  }

  void analyticMethod() {
    //we can do anything
    print('${this.widget} is rendered');
  }

  void crashlyticMethod() {
    //we can do anything
    print('${this.widget} is failed');
  }

  @override
  void setState(VoidCallback fn) {
    widget.setStateLocal(fn);
    super.setState(fn);
  }

  @override
  void initState() {
    analyticMethod();
    widget.initState();
    super.initState();
  }

  @override
  void activate() {
    widget.activate();
    super.activate();
  }

  @override
  void deactivate() {
    widget.activate();
    super.deactivate();
  }

  @override
  void dispose() {
    widget.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    widget.reassemble();
    super.reassemble();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    widget.debugFillProperties(properties);
    super.debugFillProperties(properties);
  }

  @override
  void didUpdateWidget(covariant CommonStatefulWidget oldWidget) {
    widget.didUpdateWidget(oldWidget);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    widget.didChangeDependencies();
    super.didChangeDependencies();
  }

  @override
  DiagnosticsNode toDiagnosticsNode({String name, DiagnosticsTreeStyle style}) {
    widget.toDiagnosticsNode();
    return super.toDiagnosticsNode(name: name, style: style);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    widget.toString();
    return super.toString(minLevel: minLevel);
  }

  @override
  String toStringShort() {
    widget.toStringShort();
    return super.toStringShort();
  }
}
