import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xclusive/providers/ui.dart';
import 'package:xclusive/providers/webview_controller.dart';

class RefreshButton extends ConsumerWidget {
  const RefreshButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(webViewControllerProvider);
    return IconButton(
      icon: const Icon(Icons.refresh),
      onPressed: () {
        controller.reload();
        ref.refresh(uiCustomizationProvider); // カスタマイズを再適用
      },
    );
  }
}
