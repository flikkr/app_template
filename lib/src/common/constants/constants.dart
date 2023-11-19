import 'package:flutter/material.dart';

class Space {
  static const form = $100;

  static const $0 = 0.0;
  static const $025 = 2.0;
  static const $050 = 4.0;
  static const $075 = 6.0;
  static const $100 = 8.0;
  static const $150 = 12.0;
  static const $200 = 16.0;
  static const $250 = 20.0;
  static const $300 = 24.0;
  static const $400 = 32.0;
  static const $500 = 40.0;
  static const $600 = 48.0;
  static const $800 = 64.0;
  static const $1000 = 80.0;
}

class Pad {
  static const pageMobile = all8;
  static const pageWeb = all16;

  static const all4 = EdgeInsets.all(Space.$050);
  static const all8 = EdgeInsets.all(Space.$100);
  static const all16 = EdgeInsets.all(Space.$200);
  static const all32 = EdgeInsets.all(Space.$400);
  static const all64 = EdgeInsets.all(Space.$800);

  static const w4 = EdgeInsets.symmetric(horizontal: Space.$050);
  static const w8 = EdgeInsets.symmetric(horizontal: Space.$100);
  static const w16 = EdgeInsets.symmetric(horizontal: Space.$200);
  static const w32 = EdgeInsets.symmetric(horizontal: Space.$400);
  static const w64 = EdgeInsets.symmetric(horizontal: Space.$800);

  static const h4 = EdgeInsets.symmetric(vertical: Space.$050);
  static const h8 = EdgeInsets.symmetric(vertical: Space.$100);
  static const h16 = EdgeInsets.symmetric(vertical: Space.$200);
  static const h32 = EdgeInsets.symmetric(vertical: Space.$400);
  static const h64 = EdgeInsets.symmetric(vertical: Space.$800);
}

class Rad {
  static const all4 = BorderRadius.all(Radius.circular(Space.$050));
  static const all8 = BorderRadius.all(Radius.circular(Space.$100));
}
