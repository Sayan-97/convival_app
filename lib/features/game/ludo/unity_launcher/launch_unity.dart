import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
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
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: UnityWidget(
          onUnityCreated: onUnityCreated,
          onUnityMessage: onUnityMessage,
        ),
      ),
    );
  }

  void onUnityCreated(controller) {
    _unityWidgetController = controller;
  }

  void onUnityMessage(message) {
    FirebaseAuth auth = FirebaseAuth.instance;
    final messageData = {
      "Email":
          auth.currentUser?.email, // Provide a default value for null email
      "UserName": auth.currentUser
          ?.displayName, // Provide a default value for null userName
    };
    if (message != null) {
      if (message == "SendAuthDetails") {
        _unityWidgetController!.postMessage(
            "UnityMessageManager", //gameObject
            "FirstMessagePass",
            jsonEncode(messageData));
      }
    }
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit Game'),
            content: const Text('Are you sure you want to exit the game?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  if (_unityWidgetController != null) {
                    _unityWidgetController!.unload();
                    _unityWidgetController!.dispose();

                    Navigator.of(context).pop(true);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Something went wrong"),
                      ),
                    );
                    Navigator.of(context).pop(true);
                  }
                },
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
