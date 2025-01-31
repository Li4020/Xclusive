import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'webview_controller.dart';

final uiCustomizationProvider = FutureProvider<void>((ref) async {
  final controller = ref.read(webViewControllerProvider);
  // await controller.runJavaScript('''
  //   document.querySelector('[data-testid="recommendations"]')?.remove();
  //   const followingTab = document.querySelector('[aria-label="フォロー中"]');
  //   if (followingTab) {
  //     followingTab.click();
  //   }
  // ''');
});
