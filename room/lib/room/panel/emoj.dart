import 'package:baselib/meta/emoj.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/material.dart';

Future<Emoj> showEmojPanel(BuildContext context, MTheme theme) async {
  var emojs = await EmojMeta.instance.get();
  return  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          constraints: BoxConstraints(maxHeight: 300),
          child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pop(context, emojs[index]);
                  },
                  child: Image.network(emojs[index].icon),
                );
              },
              itemCount: emojs.length),
        );
      },
      backgroundColor: Colors.black54,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))));
}
