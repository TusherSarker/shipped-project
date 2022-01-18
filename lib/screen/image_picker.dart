import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class image extends StatefulWidget {
  @override
  _imageState createState() => _imageState();
}

class _imageState extends State<image> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Container(
                  height: 150,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            _getFromGallery();
                          },
                          child: Text('Galery')),
                      TextButton(
                          onPressed: () {
                            _getFromCamera();
                          },
                          child: Text('Camera'))
                    ],
                  ),
                ),
              );
            });
      },
      child: Text('chose image'),
    );
  }

  _getFromGallery() async {
    PickedFile? pickFile = await ImagePicker()
        .getImage(source: ImageSource.gallery, maxHeight: 300, maxWidth: 300);
    if (pickFile != null) {
      setState(() {
        imageFile = File(pickFile.path);
      });
    }
  }

  _getFromCamera() async {
    PickedFile? pickFile = await ImagePicker()
        .getImage(source: ImageSource.camera, maxHeight: 300, maxWidth: 300);
    if (pickFile != null) {
      setState(() {
        imageFile = File(pickFile.path);
      });
    }
  }

  Widget displaySignatureFile() {
    return SizedBox(
      height: 480,
      width: 480,
      child: imageFile == null
          ? Icon(
              Icons.camera_alt_outlined,
              size: 100,
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.file(
                imageFile!,
                fit: BoxFit.fill,
              ),
            ),
    );
  }
}
