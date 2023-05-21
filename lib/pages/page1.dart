//home
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadPage extends StatefulWidget {
  @override
  _ImageUploadPageState createState() => _ImageUploadPageState();
}

class _ImageUploadPageState extends State<ImageUploadPage> {
  File? _imageFile;
  String? _uploadedImageUrl;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    
    setState(() {
      if (pickedImage != null) {
        _imageFile = File(pickedImage.path);
      }
    });
  }

  Future<void> _uploadImage() async {
    if (_imageFile == null) {
      return;
    }
    
    final storageReference = FirebaseStorage.instance.ref().child('images/${DateTime.now().millisecondsSinceEpoch}.jpg');
    final uploadTask = storageReference.putFile(_imageFile!);
    final snapshot = await uploadTask.whenComplete(() {});

    if (snapshot.state == TaskState.success) {
      final downloadUrl = await snapshot.ref.getDownloadURL();
      setState(() {
        _uploadedImageUrl = downloadUrl;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Upload'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _pickImage,
            child: Text('Select Image'),
          ),
          SizedBox(height: 20.0),
          _imageFile != null
              ? Image.file(_imageFile!)
              : Text('No image selected'),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _uploadImage,
            child: Text('Upload Image'),
          ),
          SizedBox(height: 20.0),
          _uploadedImageUrl != null
              ? Image.network(_uploadedImageUrl!)
              : Container(),
        ],
      ),
    );
  }
}
