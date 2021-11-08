import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_ml_face_detection/google_ml_face_detection.dart';

void main() {
  const MethodChannel channel = MethodChannel('google_ml_face_detection');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await GoogleMlFaceDetection.platformVersion, '42');
  // });
}
