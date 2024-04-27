import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SilverItemComponent extends StatelessWidget {
//  final CurrencyBank item;
  final String image;
  final String name;
  final double currentEgyPrice;
  final double currentUsdPrice;
  final double currentEgyPriceChange;
  final double currentUsdPriceChange;
  final List<double> price;

  const SilverItemComponent(
      {super.key,
      required this.name,
      required this.currentEgyPrice,
      required this.image,
      required this.currentEgyPriceChange,
      required this.price,
      required this.currentUsdPrice,
      required this.currentUsdPriceChange});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: myWidth * 0.03, vertical: myHeight * 0.02),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.displayLarge),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: myHeight * 0.05,
                // width: myWidth * 0.2,
                child: Sparkline(
                  data: price,
                  lineWidth: 2.0,
                  lineColor:
                      currentEgyPriceChange >= 0 ? Colors.green : Colors.red,
                  fillMode: FillMode.below,
                  fillGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.7],
                      colors: currentEgyPriceChange >= 0
                          ? [Colors.green, Colors.green.shade100]
                          : [Colors.red, Colors.red.shade100]),
                ),
              ),
            ),
            SizedBox(
              width: myWidth * 0.02,
            ),
            Expanded(
              flex: 2,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'جنيه',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(currentEgyPrice.toStringAsFixed(2),
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.headlineLarge),
                        Row(
                          children: [
                            Text(
                              '$currentEgyPriceChange',
                              style: TextStyle(
                                fontSize: 11,
                                color: currentEgyPriceChange >= 0
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                            currentEgyPriceChange >= 0
                                ? Icon(
                                    Icons.arrow_drop_up,
                                    size: 18,
                                    color: Colors.green,
                                  )
                                : Icon(
                                    Icons.arrow_drop_down,
                                    size: 18,
                                    color: Colors.red,
                                  )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'دولار',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(currentUsdPrice.toStringAsFixed(2),
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.headlineLarge),
                        Row(
                          children: [
                            Text(
                              '$currentUsdPriceChange',
                              style: TextStyle(
                                fontSize: 11,
                                color: currentUsdPriceChange >= 0
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                            currentUsdPriceChange >= 0
                                ? Icon(
                                    Icons.arrow_drop_up,
                                    size: 18,
                                    color: Colors.green,
                                  )
                                : Icon(
                                    Icons.arrow_drop_down,
                                    size: 18,
                                    color: Colors.red,
                                  )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
