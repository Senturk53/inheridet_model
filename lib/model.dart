import 'package:flutter/material.dart';

class ChangeColor extends InheritedModel<LogoAspect> {
  final Color? color;
  const ChangeColor({
    super.key,
    this.color,
    required super.child,
  });

  static Color? backgroundColorOf(BuildContext context) {
    return InheritedModel.inheritFrom<ChangeColor>(context,
            aspect: LogoAspect.backgroundColor)
        ?.color;
  }

  @override
  bool updateShouldNotify(ChangeColor oldWidget) {
    return color != oldWidget.color;
  }

  @override
  bool updateShouldNotifyDependent(
      ChangeColor oldWidget, Set<LogoAspect> dependencies) {
    if (color != oldWidget.color &&
        dependencies.contains(LogoAspect.backgroundColor)) {
      return true;
    }
    return false;
  }
}

enum LogoAspect { backgroundColor }
