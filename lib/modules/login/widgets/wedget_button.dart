import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isloading;
  final bool enabled;
  WidgetButton({
    required this.label,
    required this.onPressed,
    required this.enabled,
    required this.isloading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        child: Container(
            child: isloading
                ? CircularProgressIndicator(
                    color: Colors.yellow,
                  )
                : Text(
                    label,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  )),
      ),
    );
    ;
  }
}
