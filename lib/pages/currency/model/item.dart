import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

import 'currency_bank.dart';


class ItemComponent extends StatelessWidget {
//  final CurrencyBank item;
final String image;
  final String name;
final String currentPrice;

  const ItemComponent({super.key, required this.name, required this.currentPrice, required this.image});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: myWidth * 0.02, vertical: myHeight * 0.02),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                  height: myHeight * 0.05, child: Image.network(image)),
            ),
            SizedBox(
              width: myWidth * 0.02,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //   '~${item.symbol!}',
                  //   style: const TextStyle(
                  //       fontSize: 18,
                  //       fontWeight: FontWeight.normal,
                  //       color: Colors.grey),
                  // ),
                ],
              ),
            ),
            SizedBox(
              width: myWidth * 0.01,
            ),
            // Expanded(
            //   flex: 2,
            //   child: SizedBox(
            //     height: myHeight * 0.05,
            //     // width: myWidth * 0.2,
            //     child: Sparkline(
            //       data: item.sparklineIn7d.price!,
            //       lineWidth: 2.0,
            //       lineColor: item.marketCapChangePercentage24h! >= 0
            //           ? Colors.green
            //           : Colors.red,
            //       fillMode: FillMode.below,
            //       fillGradient: LinearGradient(
            //           begin: Alignment.topCenter,
            //           end: Alignment.bottomCenter,
            //           stops: const [0.0, 0.7],
            //           colors: item.marketCapChangePercentage24h! >= 0
            //               ? [Colors.green, Colors.green.shade100]
            //               : [Colors.red, Colors.red.shade100]),
            //     ),
            //   ),
            // ),
            SizedBox(
              width: myWidth * 0.04,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\$ ${currentPrice}',
                    style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       item.priceChange24h.toString().contains('-')
                  //           ? "-\$${item.priceChange24h!
                  //                   .toStringAsFixed(1)
                  //                   .toString()
                  //                   .replaceAll('-', '')}"
                  //           : "\$${item.priceChange24h!.toStringAsFixed(1)}",
                  //       style:const TextStyle(
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.normal,
                  //           color: Colors.grey),
                  //     ),
                  //
                  //     Text(
                  //       '${item.marketCapChangePercentage24h!.toStringAsFixed(1)}%',
                  //       style: TextStyle(
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.normal,
                  //           color: item.marketCapChangePercentage24h! >= 0
                  //               ? Colors.green
                  //               : Colors.red),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
