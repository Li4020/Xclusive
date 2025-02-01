import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:xclusive/providers/ui.dart';
import 'package:xclusive/providers/webview_controller.dart';

class WebViewWithCustomization extends ConsumerWidget {
  const WebViewWithCustomization({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(webViewControllerProvider);
    ref.watch(uiCustomizationProvider);

    // final controller = WebViewController()
    //   ..loadRequest(Uri.parse('https://flutter.dev'))
    //   ..setJavaScriptMode(JavaScriptMode.unrestricted);
    // ..setBackgroundColor(Colors.black);

    return WebViewWidget(controller: controller);
  }
}
