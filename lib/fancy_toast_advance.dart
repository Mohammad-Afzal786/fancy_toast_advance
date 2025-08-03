import 'package:flutter/material.dart';

class FancyToast {
  static void show(
    BuildContext context, {
    required String message,
    Color backgroundColor = Colors.black87,
    Color textColor = Colors.white,
    IconData icon = Icons.info_outline,
    Duration duration = const Duration(seconds: 3),
    double borderRadius = 12,
    double elevation = 6,
    ToastPosition position = ToastPosition.bottom,
  }) {
    final overlay = Overlay.of(context);

    final entry = OverlayEntry(
      builder: (context) => Positioned(
        top: position == ToastPosition.top ? 50 : null,
        bottom: position == ToastPosition.bottom ? 50 : null,
        left: MediaQuery.of(context).size.width * 0.1,
        right: MediaQuery.of(context).size.width * 0.1,
        child: Material(
          color: Colors.transparent,
          child: AnimatedOpacity(
            opacity: 1.0,
            duration: const Duration(milliseconds: 300),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: elevation,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, color: textColor),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      message,
                      style: TextStyle(color: textColor, fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(entry);

    Future.delayed(duration, () {
      entry.remove();
    });
  }
}

enum ToastPosition { top, bottom }
