import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

final webViewControllerProvider = Provider<WebViewController>((ref) {
  final controller = WebViewController();
  controller.setJavaScriptMode(JavaScriptMode.unrestricted);
  controller.loadRequest(Uri.parse('https://x.com'));
  // controller.loadRequest(Uri.parse('https://flutter.dev'));
  controller.setBackgroundColor(Colors.black);

  return controller;
});
