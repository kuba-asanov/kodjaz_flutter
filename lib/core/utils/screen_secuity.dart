import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:ios_insecure_screen_detector/ios_insecure_screen_detector.dart';

class ScreenShootSecurity {
  final MethodChannel _screenshotDisablechannel =
      const MethodChannel('medcheck.kg/screenshotDisable');
  final MethodChannel _stopScreenrecordingChannel =
      const MethodChannel('medcheck.kg/stopScreenrecording');
  final IosInsecureScreenDetector _iosInsecureScreenDetector =
      IosInsecureScreenDetector();

  Future<void> screenshotDisable(
      {Function(bool isRecording)? recordingCallBack}) async {
    if (Platform.isIOS) {
      _iosInsecureScreenDetector.initialize();

      _iosInsecureScreenDetector.addListener(
        () {},
        (isRecording) {
          if (recordingCallBack != null) {
            recordingCallBack(isRecording);
          }
        },
      );
      await _screenshotDisablechannel.invokeListMethod('screenshotDisable');
    } else if (Platform.isAndroid) {
      await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    }
  }

  Future<bool> isScreenRecording() async {
    return _iosInsecureScreenDetector.isCaptured();
  }

  Future<void> stopScreenRecording() async {
    _stopScreenrecordingChannel.invokeListMethod('stopScreenrecording');
  }

  Future<void> screenshotEnable() async {
    if (Platform.isIOS) {
      await _screenshotDisablechannel.invokeListMethod('screenshotEnable');
    } else if (Platform.isAndroid) {
      await FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
    }
  }

  Future<void> dispose() async {
    if (Platform.isIOS) {
      _iosInsecureScreenDetector.dispose();
    }
  }
}
