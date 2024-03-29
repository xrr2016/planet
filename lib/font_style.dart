import 'package:flutter/material.dart';

final baseTextStyle = TextStyle(
  fontFamily: 'Poppins',
);

final regularTextStyle = baseTextStyle.copyWith(
  fontSize: 12.0,
  color: Color(0xffb6b2df),
  fontWeight: FontWeight.w400,
);

final headerTextStyle = baseTextStyle.copyWith(
  fontSize: 24.0,
  color: Colors.white,
  fontWeight: FontWeight.w600,
);

final subHeaderTextStyle = regularTextStyle.copyWith(
  fontSize: 14.0,
);

final commonTextStyle = baseTextStyle.copyWith(
  color: const Color(0xffb6b2df),
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
);
