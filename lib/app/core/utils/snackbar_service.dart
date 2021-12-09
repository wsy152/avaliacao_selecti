import 'package:flutter/material.dart';

class SnackBarService {
  ScaffoldMessengerState? _scaffold;

  void setAppContext(BuildContext context) {
    this._scaffold = ScaffoldMessenger.of(context);
  }

  void show(final String text,
      [SnackBarAction? action,
      final SnackBarTypes? type,
      final Duration? duration]) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _scaffold!.showSnackBar(SnackBar(
        content: Text(
          text,
          style: TextStyle(color: _buildTextColor(type!)),
        ),
        action: action ?? _buildDefaultSnackBar(),
        backgroundColor: _buildBackgroundColor(type),
        duration: duration ?? Duration(seconds: 5),
      ));
    });
  }

  void info(final String text,
      [final SnackBarAction? action, final Duration? duration]) {
    show(text, action, SnackBarTypes.INFO, duration);
  }

  void success(final String text,
      [final SnackBarAction? action, final Duration? duration]) {
    show(text, action, SnackBarTypes.SUCCESS, duration);
  }

  void warning(final String text,
      [final SnackBarAction? action, final Duration? duration]) {
    show(text, action, SnackBarTypes.WARNING, duration);
  }

  void error(final String text,
      [final SnackBarAction? action, final Duration? duration]) {
    show(text, action, SnackBarTypes.ERROR, duration);
  }

  /*
   * Internal
   */
  static SnackBarAction _buildDefaultSnackBar() {
    return SnackBarAction(
      label: 'Fechar',
      onPressed: () {
        // Just close
      },
    );
  }

  static Color _buildTextColor(SnackBarTypes types) {
    switch (types) {
      case SnackBarTypes.INFO:
      case SnackBarTypes.SUCCESS:
      case SnackBarTypes.WARNING:
      case SnackBarTypes.ERROR:
      default:
        return Colors.white;
    }
  }

  static Color _buildBackgroundColor(SnackBarTypes types) {
    switch (types) {
      case SnackBarTypes.INFO:
        return Colors.blue;
      case SnackBarTypes.SUCCESS:
        return Colors.green;
      case SnackBarTypes.WARNING:
        return Colors.orange;
      case SnackBarTypes.ERROR:
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}

enum SnackBarTypes { INFO, SUCCESS, WARNING, ERROR }
