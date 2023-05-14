import 'package:flutter/material.dart';

enum UserRole {
  admin("admin", 3),
  user("user", 1);

  final String name;
  final int level;

  const UserRole(this.name, this.level);

  factory UserRole.setRole(String role) {
    switch (role) {
      case "admin":
        return UserRole.admin;
      case "user":
        return UserRole.user;
      default:
        return UserRole.user;
    }
  }

  @override
  String toString() => name;
}
