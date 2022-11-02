import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/ui/button_widget.dart';
import 'provider/item_selected_provider.dart';
import 'utils/button_multiselect_item.dart';
import 'utils/button_selected_style.dart';
import 'utils/button_size.dart';

class ButtonMultiSelect<T> extends StatelessWidget {
  final List<ButtonMultiSelectItem<T>> items;
  final ValueChanged<List<dynamic>> onSelectedChanged;
  final ButtonSize buttonSize;
  final Color primaryColor;
  final Color textColor;
  final ButtonSelectedStyle selectedStyle;
  final bool twoLines;

  ButtonMultiSelect({
    required this.items,
    required this.onSelectedChanged,
    required this.primaryColor,
    required this.textColor,
    this.buttonSize = ButtonSize.medium,
    this.selectedStyle = ButtonSelectedStyle.both,
    super.key,
    this.twoLines = false,
  }) {
    bool fullIcons = items.every((element) => element.icon != null);
    bool emptyIcons = items.every((element) => element.icon == null);

    assert(items.isNotEmpty);
    assert(fullIcons != emptyIcons, 'all items must have icons or none');
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ItemSelectedProvider())
      ],
      child: LayoutBuilder(
        builder: (_, BoxConstraints constraints) {
          final buttonWidth =
              _calculateCardWidth(buttonSize, context, constraints.maxWidth);
          return Container(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 2,
                children: [
                  ...List.generate(items.length, (index) {
                    return Consumer<ItemSelectedProvider>(
                        builder: (_, itemSelected, __) {
                      return ButtonCard(
                        twoLines: twoLines,
                        item: items[index],
                        selected: itemSelected.isSelected(items[index].value),
                        width: buttonWidth,
                        onTap: () {
                          itemSelected
                              .addOrRemoveSelectedItem(items[index].value);
                          onSelectedChanged(itemSelected.selectedItems);
                        },
                        primaryColor: primaryColor,
                        textColor: textColor,
                        selectedStyle: selectedStyle,
                      );
                      // });
                    });
                  })
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  double _calculateCardWidth(
      ButtonSize buttonSize, BuildContext context, double maxWidth) {
    maxWidth = maxWidth - 10;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      switch (buttonSize) {
        case ButtonSize.small:
          return maxWidth * .25;
        case ButtonSize.medium:
          return maxWidth * .33;
        case ButtonSize.large:
          return maxWidth * .5;
        default:
          return maxWidth * .25;
      }
    } else {
      switch (buttonSize) {
        case ButtonSize.small:
          return maxWidth * .2;
        case ButtonSize.medium:
          return maxWidth * .25;
        case ButtonSize.large:
          return maxWidth * .33;
        default:
          return maxWidth * .2;
      }
    }
  }
}
