import 'package:flutter/material.dart';

extension EmptySpace on num {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );
  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}

extension NavigationExtension on BuildContext {
  void navigateTo(Widget route, {Object? data}) {
    Navigator.of(this).push(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => route,
        transitionDuration: Duration.zero,
        settings: RouteSettings(
          arguments: data,
        ),
      ),
    );
  }

  void removeUntil(Widget route, {Object? data}) {
    Navigator.of(this).pushAndRemoveUntil(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => route,
        transitionDuration: Duration.zero,
        settings: RouteSettings(
          arguments: data,
        ),
      ),
      (route) => false,
    );
  }

  void back() {
    Navigator.pop(this);
  }
}
