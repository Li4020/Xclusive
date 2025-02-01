import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'webview_controller.dart';

final uiCustomizationProvider = FutureProvider<void>((ref) async {
  final controller = ref.read(webViewControllerProvider);
  await controller.runJavaScript('''
    // おすすめ欄を削除
    document.querySelector('[data-testid="recommendations"]')?.remove();
    
    // フォロー中タブをクリック
    const followingTab = document.querySelector('[aria-label="フォロー中"]');
    if (followingTab) {
      followingTab.click();
    }

    // おすすめ欄のボタンを無効化
    const recommendationsButton = document.querySelector('[aria-label="おすすめ"]');
    if (recommendationsButton) {
      recommendationsButton.style.pointerEvents = 'none';
      recommendationsButton.style.opacity = '0.5';
    }
  ''');
});
