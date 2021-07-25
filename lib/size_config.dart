import 'package:flutter/cupertino.dart';

class SizeConfig {
static late double _screenWidth;
static late double _screenheight;
static double _blockSizeHorizontal = 0;
static double _blockSizeVertical = 0;

static late double w;
static late double h;


// static double textMultiplier;
// static double imageSizeMultiplier;
// static double heightMultiplier;

void init (BoxConstraints constraints, Orientation orientation) {

if(orientation == Orientation.portrait){
_screenWidth = constraints.maxWidth;
_screenheight = constraints.maxHeight;

} else {

_screenWidth = constraints.maxHeight;
_screenheight = constraints.maxWidth;


}

_blockSizeHorizontal = _screenWidth / 100;
_blockSizeVertical = _screenheight / 100;



w = _blockSizeHorizontal * 0.486145;
h = _blockSizeVertical * 0.2926545;

// textMultiplier = _blockSizeVertical;
// imageSizeMultiplier = _blockSizeHorizontal;
// heightMultiplier = _blockSizeVertical;



print("vertical: $_blockSizeVertical");
print("horizontal: $_blockSizeHorizontal");

print("w: $w");
print("h: $h");

}

}