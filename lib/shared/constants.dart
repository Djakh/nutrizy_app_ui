import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const textInputDecoration = InputDecoration(
                       
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0)),
                      focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2.0))
                  );