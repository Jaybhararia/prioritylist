import 'package:flutter/widgets.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _blockSizeHorizontal;
  static late double _blockSizeVertical;
  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;
  static late double _textscalefactor;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;
    _textscalefactor = _mediaQueryData.textScaleFactor;
    _blockSizeHorizontal = _screenWidth/100;
    _blockSizeVertical = _screenHeight/100;
    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (_screenWidth - _safeAreaHorizontal)/100;
    safeBlockVertical = (_screenHeight - _safeAreaVertical)/100;
  }

  // 1 bkhorizontal = 10 units ;
  get bkhorizontal {
    return _blockSizeHorizontal*2.564102;
  }

  get vertical_distance{
    return _blockSizeVertical;
  }

  get txtscale {
    return _textscalefactor;
  }
}