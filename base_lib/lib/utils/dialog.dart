import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

///
///温馨提示
///
///

showTipLoading(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, StateSetter setState) {
          return MediaQuery.removeViewInsets(
            removeLeft: true,
            removeTop: true,
            removeRight: true,
            removeBottom: true,
            context: context,
            child: Center(
              child: Material(
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                type: MaterialType.card,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: CircularProgressIndicator(
                        strokeWidth: 4.0,
                        backgroundColor: ThemeGlobal
                            .instance.themeData.themeColor.themeColor,
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
      });
}
