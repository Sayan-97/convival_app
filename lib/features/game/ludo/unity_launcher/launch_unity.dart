import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class LaunchUnity extends StatefulWidget {
  const LaunchUnity({super.key});

  @override
  State<LaunchUnity> createState() => _LaunchUnityState();
}

class _LaunchUnityState extends State<LaunchUnity> {
  // ignore: unused_field
  UnityWidgetController? _unityWidgetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: UnityWidget(
          onUnityCreated: onUnityCreated,
        ),
      ),
    );
  }

  void onUnityCreated(controller) {
    _unityWidgetController = controller;
  }
}
