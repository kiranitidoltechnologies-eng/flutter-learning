import 'package:flutter/material.dart';
import 'package:my_first_app/text_const.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConst.settingScreensTitle),
      ),
      body: const Center(
        child: Text(TextConst.settingScreen),
      ),
    );
  }
}