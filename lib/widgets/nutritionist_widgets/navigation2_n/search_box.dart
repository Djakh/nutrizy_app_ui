import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        hintText: "Search",
        hintStyle: TextStyle(fontSize: 17),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        fillColor: Colors.indigo[50],
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),

        // focusedBorder: OutlineInputBorder(
        //     borderSide: BorderSide(color: Colors.pink, width: 2.0))
      ),
      onChanged: (val) {},
    );
  }
}
