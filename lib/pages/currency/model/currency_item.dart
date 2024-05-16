import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CurrencyItemComponent extends StatelessWidget {
//  final CurrencyBank item;
  final String image;
  final String name;
  final double currentBuyPrice;
  final double currentSellPrice;
  final double currentBuyPriceChange;
  final double currentSellPriceChange;
  final List<double> price;

  const CurrencyItemComponent(
      {super.key,
      required this.name,
      required this.currentBuyPrice,
      required this.image,
      required this.currentBuyPriceChange,
      required this.price,
      required this.currentSellPrice,
      required this.currentSellPriceChange});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: myWidth * 0.06, vertical: myHeight * 0.02),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                  height: myHeight * 0.03, child: SvgPicture.network(image)),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.clip,
                    style: Theme.of(context).textTheme.bodyLarge
                  ),
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
                      currentBuyPriceChange >= 0 ? Colors.green : Colors.red,
                  fillMode: FillMode.below,
                  fillGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.7],
                      colors: currentBuyPriceChange >= 0
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('بيع',style: Theme.of(context).textTheme.displayLarge,),
                        Text(
                          currentBuyPrice.toStringAsFixed(2),
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineLarge
                        ),
                        Row(
                          children: [
                            Text(
                              currentBuyPriceChange.toStringAsFixed(3),
                              style: TextStyle(
                                color: currentBuyPriceChange >= 0
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                            currentBuyPriceChange >= 0
                                ? const Icon(
                                    Icons.arrow_drop_up,
                                    size: 18,
                                    color: Colors.green,
                                  )
                                : const Icon(
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
                        Text('شراء',style: Theme.of(context).textTheme.displayLarge,),
                        Text(
                          currentSellPrice.toStringAsFixed(2),
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Row(
                          children: [
                            Text(
                              currentSellPriceChange.toStringAsFixed(3),
                              style: TextStyle(
                                color: currentSellPriceChange >= 0
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                            currentSellPriceChange >= 0
                                ? const Icon(
                                    Icons.arrow_drop_up,
                                    size: 18,
                                    color: Colors.green,
                                  )
                                : const Icon(
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
