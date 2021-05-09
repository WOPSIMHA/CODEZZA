import 'package:codezza/src/components/style/font_style.dart';
import 'package:flutter/material.dart';

class ComponentsTextNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FontStyleNormal(title: '텍스트 Normal', size: 24),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FontStyleNormal(title: '텍스트 56', size: 56),
            FontStyleNormal(title: '텍스트 52', size: 52),
            FontStyleNormal(title: '텍스트 48', size: 48),
            FontStyleNormal(title: '텍스트 44', size: 44),
            FontStyleNormal(title: '텍스트 40', size: 40),
            FontStyleNormal(title: '텍스트 36', size: 36),
            FontStyleNormal(title: '텍스트 32', size: 32),
            FontStyleNormal(title: '텍스트 24', size: 24),
            FontStyleNormal(title: '텍스트 20', size: 20),
            FontStyleNormal(title: '텍스트 16', size: 16),
          ],
        ),
      ),
    );
  }
}

class ComponentsTextBold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FontStyleBold(title: '텍스트 Bold', size: 24),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FontStyleBold(title: '텍스트 56', size: 56),
            FontStyleBold(title: '텍스트 52', size: 52),
            FontStyleBold(title: '텍스트 48', size: 48),
            FontStyleBold(title: '텍스트 44', size: 44),
            FontStyleBold(title: '텍스트 40', size: 40),
            FontStyleBold(title: '텍스트 36', size: 36),
            FontStyleBold(title: '텍스트 32', size: 32),
            FontStyleBold(title: '텍스트 24', size: 24),
            FontStyleBold(title: '텍스트 20', size: 20),
            FontStyleBold(title: '텍스트 16', size: 16),
          ],
        ),
      ),
    );
  }
}
