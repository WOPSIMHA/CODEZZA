// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Demo',
      home: MyHomePage(title: 'Image Picker Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List<PickedFile>? _imageFileList;
  List<XFile>? _imageFileList;

  // set _imageFile(PickedFile? value) {
  //   _imageFileList = value == null ? null : [value];
  // }
  set _imageFile(XFile? value) {
    _imageFileList = value == null ? null : [value];
  }

  dynamic _pickImageError;
  String? _retrieveDataError;

  final ImagePicker _picker = ImagePicker();

  void _onImageButtonPressed(ImageSource source,
      {BuildContext? context}) async {
    try {
      // final pickedFile = await _picker.getImage(
      //   source: source,
      // );
      final pickedFile = await _picker.pickImage(
        source: source,
        maxHeight: 480, // 높이
        maxWidth: 640, // 넒이
        imageQuality: 30, // 이미지 압축
      );
      setState(() {
        _imageFile = pickedFile;
      });
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _previewImages() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_imageFileList != null) {
      return Semantics(
          child: ListView.builder(
            key: UniqueKey(),
            itemBuilder: (context, index) {
              // Why network for web?
              // See https://pub.dev/packages/image_picker#getting-ready-for-the-web-platform
              return Semantics(
                label: 'image_picker_example_picked_image',
                child: kIsWeb
                    ? Image.network(_imageFileList![index].path)
                    : Image.file(File(_imageFileList![index].path)),
              );
            },
            itemCount: _imageFileList!.length,
          ),
          label: 'image_picker_example_picked_images');
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        'You have not yet picked an image.',
        textAlign: TextAlign.center,
      );
    }
  }

  Future<void> retrieveLostData() async {
    // final LostData response = await _picker.getLostData();
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        _imageFile = response.file;
      });
    } else {
      _retrieveDataError = response.exception!.code;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
            ? FutureBuilder<void>(
                future: retrieveLostData(),
                builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return const Text(
                        'You have not yet picked an image.',
                        textAlign: TextAlign.center,
                      );
                    case ConnectionState.done:
                      return _previewImages();
                    default:
                      if (snapshot.hasError) {
                        return Text(
                          'Pick image/video error: ${snapshot.error}}',
                          textAlign: TextAlign.center,
                        );
                      } else {
                        return const Text(
                          'You have not yet picked an image.',
                          textAlign: TextAlign.center,
                        );
                      }
                  }
                },
              )
            : _previewImages(),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Semantics(
            label: 'image_picker_example_from_gallery',
            child: FloatingActionButton(
              onPressed: () {
                _onImageButtonPressed(ImageSource.gallery, context: context);
              },
              heroTag: 'image0',
              tooltip: 'Pick Image from gallery',
              child: const Icon(Icons.photo),
            ),
          ),
        ],
      ),
    );
  }

  Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError!);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }

// Future<void> _displayPickImageDialog(BuildContext context) async {
//   return showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Add optional parameters'),
//           content: Column(
//             children: <Widget>[
//               TextField(
//                 keyboardType: TextInputType.numberWithOptions(decimal: true),
//                 decoration:
//                     InputDecoration(hintText: "Enter maxWidth if desired"),
//               ),
//               TextField(
//                 keyboardType: TextInputType.numberWithOptions(decimal: true),
//                 decoration:
//                     InputDecoration(hintText: "Enter maxHeight if desired"),
//               ),
//               TextField(
//                 keyboardType: TextInputType.number,
//                 decoration:
//                     InputDecoration(hintText: "Enter quality if desired"),
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('CANCEL'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//                 child: const Text('PICK'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 }),
//           ],
//         );
//       });
// }
}
