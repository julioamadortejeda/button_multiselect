import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../utils/button_multiselect_item.dart';
import '../../../utils/button_selected_style.dart';

class ButtonCard extends StatelessWidget {
  final ButtonMultiSelectItem item;
  final bool selected;
  final double width;
  final void Function()? onTap;
  final Color primaryColor;
  final Color textColor;
  final ButtonSelectedStyle selectedStyle;
  const ButtonCard({
    super.key,
    required this.item,
    required this.selected,
    required this.width,
    required this.onTap,
    required this.primaryColor,
    required this.textColor,
    required this.selectedStyle,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: (selected &&
                      (selectedStyle == ButtonSelectedStyle.both ||
                          selectedStyle == ButtonSelectedStyle.border))
                  ? primaryColor
                  : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Container(
            padding: EdgeInsets.all(width * .02),
            height: width * (isPortrait ? .4 : .25),
            child: Stack(
              children: [
                if (selected &&
                    (selectedStyle == ButtonSelectedStyle.both ||
                        selectedStyle == ButtonSelectedStyle.check))
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      color: primaryColor,
                      Icons.check,
                      size: width * .1,
                    ),
                  ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: width * .05, horizontal: width * .07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        item.icon != null
                            ? Icon(
                                item.icon,
                                color: primaryColor,
                                size: width * .12,
                              )
                            : Container(),
                        // Spacer(),
                        SizedBox(
                          width: width * .6,
                          child: AutoSizeText(
                            item.label,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            minFontSize: 8,
                            style: TextStyle(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
