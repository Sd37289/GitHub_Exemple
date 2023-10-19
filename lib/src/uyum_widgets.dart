
import 'package:flutter/material.dart';




class UyumCheckBox extends StatefulWidget {
  UyumCheckBox(
      {Key? key,
        this.ActiveColor,
        this.CheckColor,
        this.BorderColor,
        this.BorderWidth})
      : super(key: key);

  final Color? ActiveColor;
  final Color? CheckColor;
  final Color? BorderColor;
  final double? BorderWidth;

  @override
  State<UyumCheckBox> createState() => _UyumCheckBoxState();
}

class _UyumCheckBoxState extends State<UyumCheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      activeColor: widget.ActiveColor ?? UyumColor().UyumRed,
      checkColor: widget.CheckColor ?? UyumColor().UyumWhite,
      side: BorderSide(
        color: widget.BorderColor ?? UyumColor().UyumBlack,
        width: widget.BorderWidth ?? 2,
      ),
      onChanged: (bool? value) {
        setState(() {
          value = value!;
        });
      },
    );
  }
}

class UyumTheme {
  ThemeData themeData = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: UyumColor().UyumRed,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: UyumColor().UyumRed,
    ),
  );
}

class UyumColor { 
  final Color UyumRed = const Color.fromRGBO(186, 43, 43, 1);
  final Color UyumBlack = const Color.fromRGBO(74, 72, 72, 1);
  final Color UyumWhite = Colors.white;
  final Color UyumBlue = Colors.blue;
}