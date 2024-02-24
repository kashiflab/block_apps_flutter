import 'package:flutter/material.dart';
import 'package:flutter_accessibility_service/flutter_accessibility_service.dart';

class AppBlockOverlay extends StatefulWidget {
  const AppBlockOverlay({Key? key}) : super(key: key);

  @override
  _AppBlockOverlayState createState() => _AppBlockOverlayState();
}

class _AppBlockOverlayState extends State<AppBlockOverlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            const Text(
              "App Blocked",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.block,
              size: 100,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            const Text(
              "This app has been blocked by the administrator",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await FlutterAccessibilityService.hideOverlayWindow();
              },
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
