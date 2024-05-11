import 'dart:convert';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/currency_bank_model.dart';
import 'head_card_component.dart';

class PartOne extends StatelessWidget {
  PartOne({super.key, required this.dataList});

  List<Color> gradientColors = [
    const Color(0xffe68823),
    const Color(0xffe68823),
  ];
  List<MyData> dataList = [];

  @override
  Widget build(BuildContext context) {
    print(dataList[0].date.toString());
    List<FlSpot> spots = dataList
        .map((point) => FlSpot((point.date.day+(point.date.month-1)*30).toDouble(), point.price))
        .toList();
    print(spots);

    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Image.asset(
          'assets/images/Coinmoney.png',
          color: Theme.of(context).colorScheme.onSecondary.withOpacity(.7),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 160,
              child: headCardComponent(context),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: LineChart(
                mainData(spots),

              ),
            ),
           const Spacer(),
            SizedBox(
              height: myHeight * 0.1,
              width: myWidth,
              // color: Colors.amber,
              child: Column(
                children: [
                  const Divider(),
                  SizedBox(height: myHeight * 0.01),
                  Row(
                    children: [
                      SizedBox(width: myWidth * 0.05),
                      Expanded(
                        flex: 5,
                        child: InkWell(
                          onTap: () {
                            // Todo write function to add crypto cone to favorite list
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: myHeight * 0.015),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xffFBC700)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: myHeight * 0.02,
                                ),
                                const Text(
                                  'Add to portfolio',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: myWidth * 0.05),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: myHeight * 0.012),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Image.asset(
                            'assets/icons/3.1.png',
                            height: myHeight * 0.03,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: myWidth * 0.05),
                    ],
                  )
                ],
              ),
            )
            //  LineChartSample2()
          ],
        ),
      ),
    );
  }

  LineChartData mainData(List<FlSpot> spots) {
    return LineChartData(
       lineTouchData: LineTouchData(
         touchCallback: ( event,response) {
           if (event is FlTapUpEvent) {
             if (response != null && response.lineBarSpots != null) {
                // print(event);
                // print(response);
             }
           }
       },),
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.amber,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.amber,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: false,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 30,
            interval: 1,
           // getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      //  minX: 0,
      //  maxX: 216,
      minY: 30,
      //  maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: spots,
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xffe68823),
                const Color(0x88e68823),
                const Color(0x88e68823),
                const Color(0x00e68823),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = const Text('MAR', style: style);
      break;
    case 5:
      text = const Text('JUN', style: style);
      break;
    case 8:
      text = const Text('SEP', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: text,
  );
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  String text;
  switch (value.toInt()) {
    case 1:
      text = '10K';
      break;
    case 3:
      text = '30k';
      break;
    case 5:
      text = '50k';
      break;
    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.left);
}
