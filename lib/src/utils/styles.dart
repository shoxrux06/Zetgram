import 'package:flutter/cupertino.dart';
import 'package:zet_gram/src//theme/app_theme.dart';

class Styles {
  static TextStyle boldOverLine(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 14,
      letterSpacing: 0.14,
      height: 1.35,
      color: color,
    );
  }

  static TextStyle boldH2(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: 1.375,
      color: color,
    );
  }

  static TextStyle regularLabel(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      letterSpacing: 1.62,
      color: color,
    );
  }

  static TextStyle boldButton(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      letterSpacing: 1.38,
      color: color,
    );
  }

  static TextStyle boldH3(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      height: 1.65,
      color: color,
    );
  }

  static TextStyle regularH3(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 20,
      height: 1.35,
      color: color,
    );
  }

  static TextStyle regularDisplay(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 17,
      height: 1.79,
      color: color,
    );
  }

  static TextStyle semiBoldLabel(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 1.69,
      color: color,
    );
  }
  static TextStyle boldLabel(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 16  ,
      height: 26/16,
      color: color,
    );
  }

  static TextStyle semiBoldDisplay(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 1.56,
      color: color,
    );
  }

  static TextStyle boldDisplay(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 25/16,
      color: color,
    );
  }

  static TextStyle boldH4(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      height: 1.38,
      color: color,
    );
  }

  static TextStyle boldH1(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 28,
      height: 1.35,
      color: color,
    );
  }

  static TextStyle regularBody(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 13,
      height: 1.85,
      color: color,
    );
  }

  static TextStyle regularContent(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 24/14,
      color: color,
    );
  }

  static TextStyle semiBoldContent(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 24/14,
      color: color,
    );
  }
  static TextStyle boldContent(Color color) {
    return TextStyle(
      fontFamily: AppTheme.fontNunitoSans,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      height: 24/14,
      color: color,
    );
  }
}
