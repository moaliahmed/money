import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/color_manger.dart';

Widget headCardComponent(context) {
  return Stack(
    children: [
      Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      Positioned(
        top: 20,
        left: 37,
        child: Container(
          height: 120,
          width: 320,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorManager.boxShadow,
                offset: const Offset(0, 6),
                blurRadius: 12,
                spreadRadius: 3,
              )
            ],
            border: Border.all(color: Colors.black45),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(.95),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(child: Image.asset('assets/images/egp.png')),
                      Text(
                        //todo change text theme
                        'US Dollar/USD',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary),
                      ),
                      const Icon(
                        Icons.arrow_downward_outlined,
                        size: 15,
                      )
                    ],
                  ),
                ),
                const Gap(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'بيع',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                        Text(
                          'EGP 30.93',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'اخر تحديث',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                        Text(
                          '5 Minutes ago',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'شراء',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                        Text(
                          'EGP 50.80',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
