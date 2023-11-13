import 'package:flutter/material.dart';

class Value {
  static const formSpacing = v8;

  static const v4 = 4.0;
  static const v8 = 8.0;
  static const v16 = 16.0;
  static const v32 = 32.0;
  static const v64 = 64.0;
}

class Gap {
  static const formH = h8;
  static const formW = w8;

  static const w4 = SizedBox(width: Value.v4);
  static const w8 = SizedBox(width: Value.v8);
  static const w16 = SizedBox(width: Value.v16);
  static const w32 = SizedBox(width: Value.v32);
  static const w64 = SizedBox(width: Value.v64);

  static const h4 = SizedBox(height: Value.v4);
  static const h8 = SizedBox(height: Value.v8);
  static const h16 = SizedBox(height: Value.v16);
  static const h32 = SizedBox(height: Value.v32);
  static const h64 = SizedBox(height: Value.v64);
}

class Pad {
  static const pageMobile = all8;
  static const pageWeb = all16;

  static const all4 = EdgeInsets.all(Value.v4);
  static const all8 = EdgeInsets.all(Value.v8);
  static const all16 = EdgeInsets.all(Value.v16);
  static const all32 = EdgeInsets.all(Value.v32);
  static const all64 = EdgeInsets.all(Value.v64);

  static const w4 = EdgeInsets.symmetric(horizontal: Value.v4);
  static const w8 = EdgeInsets.symmetric(horizontal: Value.v8);
  static const w16 = EdgeInsets.symmetric(horizontal: Value.v16);
  static const w32 = EdgeInsets.symmetric(horizontal: Value.v32);
  static const w64 = EdgeInsets.symmetric(horizontal: Value.v64);

  static const h4 = EdgeInsets.symmetric(vertical: Value.v4);
  static const h8 = EdgeInsets.symmetric(vertical: Value.v8);
  static const h16 = EdgeInsets.symmetric(vertical: Value.v16);
  static const h32 = EdgeInsets.symmetric(vertical: Value.v32);
  static const h64 = EdgeInsets.symmetric(vertical: Value.v64);
}

class Rad {
  static const all4 = BorderRadius.all(Radius.circular(Value.v4));
  static const all8 = BorderRadius.all(Radius.circular(Value.v8));
}
