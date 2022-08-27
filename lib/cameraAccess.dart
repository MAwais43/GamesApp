import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraGallery extends StatefulWidget {
  const CameraGallery({Key? key}) : super(key: key);

  @override
  State<CameraGallery> createState() => _CameraGalleryState();
}

class _CameraGalleryState extends State<CameraGallery> {
  File? myImage;

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
         myImage = tempImage;
        // front_img_chek = false;
        // img_chek = false;

    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 300,
              child: Image.file(myImage!),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) =>
                        AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          contentPadding: EdgeInsets.zero,
                          content: Container(
                            height: MediaQuery.of(context).size.height*0.15,
                            width: MediaQuery.of(context).size.width*0.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    pickImage(
                                        ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'From Gallery', style: TextStyle(color: Colors.black, fontSize: 18,),),
                                ),
                                Container(
                                  height: 1.5,
                                  width: 150,
                                  color: Colors.black54,
                                ),
                                TextButton(
                                  onPressed: () {
                                    pickImage(ImageSource.camera);
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                      'From Camera', style: TextStyle(color: Colors.black, fontSize: 18,)),
                                ),
                              ],
                            ),
                          ),
                        ),
                  );
                },
                child: Text('Get Image'))
          ],
        ),
      ),
    );
  }
}
