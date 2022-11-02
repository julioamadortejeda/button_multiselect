import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../utils/button_multiselect_item.dart';
import '../../utils/button_selected_style.dart';

class ButtonCard extends StatelessWidget {
  final ButtonMultiSelectItem item;
  final bool selected;
  final double width;
  final void Function()? onTap;
  final Color primaryColor;
  final Color textColor;
  final ButtonSelectedStyle selectedStyle;
  final bool twoLines;
  const ButtonCard({
    super.key,
    required this.item,
    required this.selected,
    required this.width,
    required this.onTap,
    required this.primaryColor,
    required this.textColor,
    required this.selectedStyle,
    this.twoLines = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(builder: (_, constraints) {
        return SizedBox(
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
            child: AspectRatio(
              aspectRatio: 16 / 6,
              child: Container(
                padding: EdgeInsets.all(constraints.maxWidth * .008),
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
                          size: constraints.maxWidth * .03,
                        ),
                      ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (item.icon != null)
                              Flexible(
                                flex: 1,
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Icon(
                                    item.icon,
                                    color: primaryColor,
                                  ),
                                ),
                              )
                            else
                              Container(),
                            const SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              flex: 2,
                              child: AutoSizeText(
                                item.label,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: twoLines ? 2 : 1,
                                minFontSize: 8,
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 14,
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
      }),
    );
  }
}
