library uyum_package;
import 'dart:ui';
import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class UyumBottomAppBar extends StatelessWidget {

  const UyumBottomAppBar({
    Key? key,
    this.bottoAppBarLeftIcon,
    this.bottoAppBarRightIcon,
    this.bottonAppBarText,
  }) : super(key: key);

  final IconData? bottoAppBarLeftIcon;
  final IconData? bottoAppBarRightIcon;
  final String? bottonAppBarText;

  @override
  Widget build(BuildContext context) {
    Widget ResultWidget = Container();

    // TODO SE: Burada butonların ve textin boutları  >> BottomAppBar << ın boyutuan göre ayarlanacak.
    final double LeftIconSize =35 ;
    final double RightIconSize = 50;
    final double TextSize = 28;

    ResultWidget = BottomAppBar(
      child: InkWell(
        // TODO SE : >> BottomAppBar << ın tetikleyeceği fonksiyon dinamik olark ayarlanacak.
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bottoAppBarLeftIcon != null
                ? Icon(
              bottoAppBarLeftIcon,
              color: UyumColor().UyumWhite,
              size: LeftIconSize,
            )
                : Container(),
            bottonAppBarText != null
                ? Text(
              bottonAppBarText!,
              style: TextStyle(color: UyumColor().UyumWhite, fontSize: TextSize, fontWeight: FontWeight.w900),
            )
                : Container(),
            bottoAppBarRightIcon != null
                ? Icon(
              bottoAppBarRightIcon,
              color: UyumColor().UyumWhite,
              size: RightIconSize,
            )
                : Container(),
          ],
        ),
      ),
    );

    return ResultWidget;
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




