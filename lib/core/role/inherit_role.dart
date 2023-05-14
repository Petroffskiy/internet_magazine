import 'package:flutter/cupertino.dart';
import 'package:internet_magazine/core/role/user_role.dart';

class InheritedRole extends InheritedWidget {
  final Widget child;
  final UserRole role;
  const InheritedRole({
    super.key,
    required this.child,
    required this.role,
  }) : super(child: child);

  static InheritedRole? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedRole>();
  }

  static InheritedRole? of(BuildContext context) {
    final InheritedRole? result = maybeOf(context);
    
    return result;
  }

  @override
  bool updateShouldNotify(InheritedRole oldWidget) {
    return role != oldWidget.role;
  }
}
