import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xclusive/widgets/refresh_button.dart';
import 'package:xclusive/widgets/webview.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// テーマを当てる
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xclusive',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Xclusive(),
    );
  }
}

class Xclusive extends StatelessWidget {
  const Xclusive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Colors.black,
          // title: const Text('Xclusive', style: TextStyle(color: Colors.white)),
          title: const RefreshButton(),
          // leading: const RefreshButton(),
        ),
      ),
      body: SafeArea(child: WebViewWithCustomization()),
      // body: InAppWebView(
      //   initialUrlRequest: URLRequest(url: WebUri('https://flutter.dev')),
      // ),
    );
    // return WebViewWithCustomization();
  }
}
