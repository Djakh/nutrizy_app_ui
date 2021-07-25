import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/add_products_provider_n.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_border_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/add_products_n_widgets/add_product_text_field.dart';
import 'package:provider/provider.dart';

class AddProductPageN extends StatefulWidget {
  const AddProductPageN({Key? key}) : super(key: key);

  @override
  _AddProductPageNState createState() => _AddProductPageNState();
}

class _AddProductPageNState extends State<AddProductPageN> {
  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<AddProductsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: RowBackTitleIcon(
            mySize: 25,
            text: "Add Planes for Sale",
            iconOf: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 37,
                  color: Colors.grey[800],
                ))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                            height: 160,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: _modelProvider.getImageFromPhone != null
                                    ? DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(
                                          _modelProvider.getImageFromPhone,
                                        ),
                                      )
                                    : null,
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                )),
                            child: _modelProvider.getImageFromPhone == null
                                ? Center(
                                    child: Icon(
                                      Icons.photo,
                                      color: Colors.grey[400],
                                      size: 50,
                                    ),
                                  )
                                : null),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: FlatButton(
                              color: Colors.white,
                              onPressed: () {
                                _modelProvider.showPicker(context);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.photo_camera,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      'Camera',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 22,
              ),
              AddProductTextField(
                myMaxLines: 1,
                myHintText: "  Enter Product Name",
                function: (myBool) => _modelProvider.setProductName(myBool),
                myBool: _modelProvider.getNameBool,
              ),
              SizedBox(
                height: 22,
              ),
              AddProductTextField(
                myMaxLines: 1,
                myHintText: "  Price",
                function: (myBool) => _modelProvider.setProductPrice(myBool),
                myBool: _modelProvider.getPriceBool,
              ),
              SizedBox(
                height: 22,
              ),
              AddProductTextField(
                myMaxLines: 7,
                myHintText: "  Enter Product Description",
                function: (myBool) =>
                    _modelProvider.setProductDescription(myBool),
                myBool: _modelProvider.getDescriptionBool,
              ),
              SizedBox(
                height: 140,
              ),
              _modelProvider.getIsValidButton()
                  ? RoundedStretchButton(
                      color: Colors.blueAccent, text: 'Add Product for Sale', function: () {}) 
                               : RoundedBorderStretchButton(
                      text: 'Add Product for Sale', function: () {})
            ],
          ),
        ),
      ),
    );
  }
}
