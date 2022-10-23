import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/ui/widgets/button_widget.dart';
import 'app/ui/widgets/controller/items_selected_controller.dart';
import 'utils/button_multiselect_item.dart';
import 'utils/button_selected_style.dart';
import 'utils/button_size.dart';

class ButtonMultiSelect<T> extends GetView<ItemSelectedController> {
  final List<ButtonMultiSelectItem<T>> items;
  final ValueChanged<List<dynamic>> onSelectedChanged;
  final ButtonSize buttonSize;
  final Color primaryColor;
  final Color textColor;
  final ButtonSelectedStyle selectedStyle;
  final String tag;

  ButtonMultiSelect({
    required this.items,
    required this.onSelectedChanged,
    required this.primaryColor,
    required this.textColor,
    this.buttonSize = ButtonSize.medium,
    this.selectedStyle = ButtonSelectedStyle.both,
    this.tag = 'default_tag',
    super.key,
  }) {
    bool fullIcons = items.every((element) => element.icon != null);
    bool emptyIcons = items.every((element) => element.icon == null);

    // bool registered = Get.isRegistered<ItemSelectedController>(tag: finalTag);
    // bool hasMultipleWithoutTag = (!registered) ||
    //     (registered && tag.isNotEmpty) ||
    //     (!registered && tag.isEmpty);
    // assert(registered == false,
    //     'to use more than one "ButtonMultiSelect" use a diferent "tag" property to identify them');
    assert(items.isNotEmpty);
    assert(fullIcons != emptyIcons, 'all items must have icons or none');
    Get.put<ItemSelectedController>(ItemSelectedController(), tag: tag);
    Get.create<ItemSelectedController>(() => ItemSelectedController());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
                  return ObxValue((data) {
                    return ButtonCard(
                      selectedStyle: selectedStyle,
                      item: items[index],
                      selected: controller.alreadyInList(index),
                      width: buttonWidth,
                      primaryColor: primaryColor,
                      textColor: textColor,
                      onTap: () {
                        data.value = index;
                        controller.addSelectedItem(items[index].value);
                        controller.addSelectedIndex(index);
                        onSelectedChanged(controller.selectedIems);
                      },
                    );
                  }, items.length.obs);
                })
              ],
            ),
          ),
        );
      },
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return LayoutBuilder(
  //     builder: (_, BoxConstraints constraints) {
  //       final buttonWidth =
  //           _calculateCardWidth(buttonSize, context, constraints.maxWidth);
  //       return Container(
  //         padding: const EdgeInsets.all(5.0),
  //         child: Center(
  //           child: Wrap(
  //             alignment: WrapAlignment.center,
  //             //spacing: 2,
  //             runSpacing: 2,
  //             children: [
  //               ...List.generate(items.length, (index) {
  //                 return Obx(() {
  //                   return ButtonCard(
  //                     selectedStyle: selectedStyle,
  //                     item: items[index],
  //                     selected: controller.alreadyInList(index),
  //                     width: buttonWidth,
  //                     primaryColor: primaryColor,
  //                     textColor: textColor,
  //                     onTap: () {
  //                       controller.addSelectedItem(items[index].value);
  //                       controller.addSelectedIndex(index);
  //                       onSelectedChanged(controller.selectedIems);
  //                       // inspect(controller.selectedIems);
  //                       // print(controller.selectedIndex);
  //                     },
  //                   );
  //                 });
  //               })
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

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
