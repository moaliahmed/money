import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoldItemComponent extends StatelessWidget {
//  final CurrencyBank item;
  final String image;
  final String name;
  final int currentBuyPrice;
  final int currentSellPrice;
  final List<double> price;

  const GoldItemComponent({
    super.key,
    required this.name,
    required this.currentBuyPrice,
    required this.image,
    required this.price,
    required this.currentSellPrice,
  });

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: myWidth * 0.03, vertical: myHeight * 0.025),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'جرام $name',
                    overflow: TextOverflow.clip,
                    style: Theme.of(context).textTheme.bodyLarge,
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
                      //currentBuyPriceChange >= 0 ? Colors.green : Colors.red
                      Colors.green,
                  fillMode: FillMode.below,
                  fillGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 0.7],
                    colors: [Colors.green, Colors.green.shade100],
                    //currentBuyPriceChange >= 0 ? [Colors.green, Colors.green.shade100] : [Colors.red, Colors.red.shade100]
                  ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'بيع',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text('$currentBuyPrice',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.headlineLarge),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'شراء',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text('$currentSellPrice',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.headlineLarge),
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
