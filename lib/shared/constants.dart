import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const textInputDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 2.0)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 2.0)));

const infoTextDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  hintStyle: TextStyle(fontSize: 20, color: Colors.grey, ),
  focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2.0))
);


