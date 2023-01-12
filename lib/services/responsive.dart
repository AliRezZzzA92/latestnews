import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  static bool isMobile(context) => MediaQuery.of(context).size.width < 850;
  static bool istablet(context) =>
      MediaQuery.of(context).size.width > 850 &&
      MediaQuery.of(context).size.width < 1100;
  static bool isDesktop(context) => MediaQuery.of(context).size.width > 1100;

  @override
  Widget build(BuildContext context) {
    final double _size = MediaQuery.of(context).size.width;
    if (_size < 850) {
      return mobile;
    } else if (_size > 850 && _size < 1100) {
      if (tablet != null) {
        return tablet!;
      } else {
        return desktop;
      }
    } else {
      return desktop;
    }
  }
}
