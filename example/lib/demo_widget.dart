import 'dart:developer';

import 'package:button_multiselect/button_multiselect.dart';
import 'package:flutter/material.dart';

import 'package:button_multiselect_example/data_example.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget({super.key});

  @override
  State<DemoWidget> createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  ButtonSize selectedSize = ButtonSize.small;
  ButtonSelectedStyle selectedStyle = ButtonSelectedStyle.both;
  bool hasIcon = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Select Size'),
                  ...List.generate(sizes.length, (index) {
                    return SizedBox(
                      height: 30,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        children: [
                          Radio<ButtonSize>(
                            activeColor: Theme.of(context).primaryColor,
                            value: sizes[index].size,
                            groupValue: selectedSize,
                            onChanged: (selected) {
                              setState(() {
                                selectedSize = selected!;
                              });
                            },
                          ),
                          Text(sizes[index].value)
                        ],
                      ),
                    );
                  }),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Select Style'),
                  ...List.generate(sizes.length, (index) {
                    return SizedBox(
                      height: 30,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        children: [
                          Radio<ButtonSelectedStyle>(
                            activeColor: Theme.of(context).primaryColor,
                            value: styles[index].style,
                            groupValue: selectedStyle,
                            onChanged: (selected) {
                              setState(() {
                                selectedStyle = selected!;
                              });
                            },
                          ),
                          Text(styles[index].value)
                        ],
                      ),
                    );
                  }),
                ],
              )
            ],
          ),
          const Divider(thickness: 2),
          const SizedBox(
            height: 10,
          ),
          const Text('Has Icon'),
          Row(
            children: [
              Radio<bool>(
                activeColor: Theme.of(context).primaryColor,
                value: hasIcons[0].hasIcon,
                groupValue: hasIcon,
                onChanged: (selected) {
                  setState(() {
                    hasIcon = selected!;
                  });
                },
              ),
              Text(hasIcons[0].value),
              Radio<bool>(
                activeColor: Theme.of(context).primaryColor,
                value: hasIcons[1].hasIcon,
                groupValue: hasIcon,
                onChanged: (selected) {
                  setState(() {
                    hasIcon = selected!;
                  });
                },
              ),
              Text(hasIcons[1].value)
            ],
          ),
          const Divider(thickness: 2),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('ButtonMultiSelect Demo'),
          const SizedBox(
            height: 10,
          ),
          ButtonMultiSelect<TestData>(
            buttonSize: selectedSize,
            items: hasIcon ? items : itemsNoIcons,
            twoLines: false,
            onSelectedChanged: (data) {
              //your code here
              inspect(data);
            },
            selectedStyle: selectedStyle,
            primaryColor: Theme.of(context).primaryColor,
            textColor: Colors.grey.shade900,
          ),
        ],
      ),
    );
  }
}
