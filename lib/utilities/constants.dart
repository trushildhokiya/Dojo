import 'package:flutter/material.dart';

/**
 * Text Styles
 */

const kBrandTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w700,
  color: kWhiteColor,
);

const kMediumTextStyle = TextStyle(
  color: kWhiteColor,
  fontWeight: FontWeight.w600,
  fontSize: 18.0
);

/**
 * Decoration
 */
const kBottomSheetContainerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
    ),
);

/**
 * Colors
 */

const kBlackColor = Color(0xFF000000);
const kOceanBlueColor = Color(0xFF14213D);
const kDarkYellowColor = Color(0xFFFCA311);
const kLightGrayColor = Color(0xFFE5E5E5);
const kWhiteColor = Color(0xFFFFFFFF);