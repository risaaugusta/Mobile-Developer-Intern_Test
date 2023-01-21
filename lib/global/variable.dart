part of '../pages.dart';

class Fonts{
  static const BOLD= 'PoppinsBold';
  static const MEDIUM = 'PoppinsMedium';
}

class ButtonStyle{
  static var raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Color(0xff2B637B),
    minimumSize: Size(318,20),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}

class Global{
  static String name = '';
  static String selectedName = '';
  static String palindrome = '';
  static String reverse = '';
  static String result = '';
}