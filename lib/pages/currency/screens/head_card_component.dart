import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/color_manger.dart';

Widget headCardComponent(
  context, {
  required String name,
  required String image,
  required String buyPrice,
  required String sellPrice,
  required String lastUpdate,
}) {
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
                color: Colors.white.withOpacity(.3),
                offset: const Offset(0, 6),
                blurRadius: 12,
                spreadRadius: 3,
              )
            ],
            border: Border.all(color: Colors.black45),
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.background.withOpacity(.9),
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
                      CircleAvatar(child: SvgPicture.network(image)),
                      Text(
                          //todo change text theme
                          name,
                          overflow: TextOverflow.clip,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ),
                const Gap(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('بيع',
                              style: Theme.of(context).textTheme.displayLarge),
                          Text('EGP $buyPrice',
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.headlineLarge),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'اخر تحديث',
                          style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 18),
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            lastUpdate,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.displayLarge,

                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'شراء',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Text(
                            'EGP $sellPrice',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      ),
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
