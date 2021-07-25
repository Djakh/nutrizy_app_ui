import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductsProvider extends ChangeNotifier {
  File? _imageFromPhone;
  final picker = ImagePicker();
  bool _nameBool = false;
  bool _priceBool = false;
  bool _descriptionBool = false;


  void setProductName(bool myBool) {
    _nameBool = myBool;

    notifyListeners();
  }

  void setProductPrice(bool myBool) {
    _priceBool = myBool;

    notifyListeners();
  }

  void setProductDescription(bool myBool) {
    _descriptionBool = myBool;

    notifyListeners();
  }


  bool getIsValidButton() {
    if (_nameBool &&
        _priceBool &&
        _descriptionBool &&
        _imageFromPhone != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> _imgFromCamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);
    if (pickedImage != null) {
      _imageFromPhone = File(pickedImage.path);
    }

    notifyListeners();
  }

  void updateScreen() {
    notifyListeners();
  }

  Future<void> _imgFromGallery() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      _imageFromPhone = File(pickedImage.path);
    }
    notifyListeners();
  }

  void showPicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  get getImageFromPhone => _imageFromPhone;
  get getNameBool => _nameBool;
  get getPriceBool => _priceBool;
  get getDescriptionBool => _descriptionBool;

}
