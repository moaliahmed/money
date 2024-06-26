import 'package:flutter/material.dart';

class StocksItemComponent extends StatelessWidget {
//  final CurrencyBank item;

  final String name;
  final String change;
  final String lastPrice;
  final String volume;
  final double changePercent;
  //final List<double> price;

  const StocksItemComponent({
    super.key,
    required this.name,
    required this.change,
    required this.volume,
    required this.lastPrice,
    required this.changePercent,
  });

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: myWidth * 0.03, vertical: myHeight * 0.025),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child: SizedBox(
          //     height: myHeight * 0.05,
          //     // width: myWidth * 0.2,
          //     child: Sparkline(
          //       data: price,
          //       lineWidth: 2.0,
          //       lineColor:
          //       //currentBuyPriceChange >= 0 ? Colors.green : Colors.red
          //       Colors.green,
          //       fillMode: FillMode.below,
          //       fillGradient: LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         stops: const [0.0, 0.7],
          //         colors: [Colors.green, Colors.green.shade100],
          //         //currentBuyPriceChange >= 0 ? [Colors.green, Colors.green.shade100] : [Colors.red, Colors.red.shade100]
          //       ),
          //     ),
          //   ),
          // ),
      
          Expanded(
            flex: 3,
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Last Price',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(lastPrice,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineLarge),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'changes',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(change,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                            color:changePercent >= 0
                                ? Colors.green
                                : Colors.red,
                          )),
                      Row(
                        children: [
                          Text(
                            '$changePercent',
                            style: TextStyle(
                              color: changePercent >= 0
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          ),
                          changePercent >= 0
                              ?const Icon(
                            Icons.arrow_drop_up,
                            size: 18,
                            color: Colors.green,
                          )
                              :const Icon(
                            Icons.arrow_drop_down,
                            size: 18,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ), SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'volume',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(volume,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.headlineLarge),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
