import 'package:flutter/widgets.dart';

/// この幅未満をスマホサイズとみなすブレークポイント。
const double kMobileBreakpoint = 600;

extension ResponsiveContext on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// スマホ相当の狭い画面かどうか。
  bool get isMobileWidth => screenWidth < kMobileBreakpoint;
}

/// ページ本文をラップし、広い画面（Web/デスクトップ）では中央寄せ＋最大幅で
/// 読みやすく、スマホ幅ではそのまま全幅で表示する。
class ResponsiveBody extends StatelessWidget {
  const ResponsiveBody({super.key, required this.child, this.maxWidth = 720});

  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
