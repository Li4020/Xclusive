# Xclusive
Twitter(新 X)のフォロー欄とDMしか見れないようにしたアプリ

## 概要
- iOSアプリ with Flutter
  - 状態管理にRiverpodを用いている
## 環境構築
- https://docs.flutter.dev/get-started/install/macos/mobile-ios
  - Flutter SDK 3.27.3
  - CocoaPods 1.16.2
    - gem 3.6.3
  - Xcode 16.2
    - ライセンス許可
      - `sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch'`
      - `sudo xcodebuild -license`
    - ios/RunnerをXcodeで開き，Signing & CapabilitiesにてTeamを設定する
      - apple idへのログイン
      - このアカウントをTeamに設定
    - wireless debug
      - Xcode > Product > Scheme > Edit Scheme
      - ArgumentsのArguments Passed on Launchに以下を追加
        - `--vm-service-host=0.0.0.0`
- 実機Developperモードオン
- iproxyを許可
  - VMエラーの場合