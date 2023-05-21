import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ImageUploaderApp());
}

class ImageUploaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Uploader',
      home: ImageUploader(),
    );
  }
}

class ImageUploader extends StatefulWidget {
  @override
  _ImageUploaderState createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  final picker = ImagePicker();

  Future pickImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      Uint8List imageBytes = await pickedImage.readAsBytes();
      uploadImageToFirebase(imageBytes);
    }
  }

  Future uploadImageToFirebase(Uint8List imageBytes) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference reference = storage.ref().child('images/${DateTime.now()}.png');
    UploadTask uploadTask = reference.putData(imageBytes);

    await uploadTask.whenComplete(() {});
    String downloadUrl = await reference.getDownloadURL();

    print('Download URL: $downloadUrl');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Uploader'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: pickImage,
          child: Text('Upload Image'),
        ),
      ),
    );
  }
}
