import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money/cubit/app_cubit.dart';
import '../../../core/string_manager.dart';
import '../model/currency_bank_model.dart';
import 'head_card_component.dart';
import 'dart:ui' as ui;

class SelectCurrencyCoin extends StatefulWidget {
  SelectCurrencyCoin({
    super.key,
    required this.dataList,
    required this.name,
    required this.image,
    required this.scrapedAt,
    required this.currentSellPrice,
    required this.currentBuyPrice,
    required this.currentSellRateChanges,
    required this.currentBuyRateChanges,
  });

  List<CurrencyPricesModel> dataList = [];

  final String name;
  final String image;
  final String scrapedAt;
  final String currentSellPrice;
  final String currentBuyPrice;
  final double currentSellRateChanges;
  final double currentBuyRateChanges;
  final TextEditingController textController = TextEditingController();

  String getState({required String inputText, required String currencyText}) {
    double inputPrice = double.parse(inputText);
    double currencyPrice = double.parse(currencyText);
    if (inputPrice > currencyPrice) {
      return AppString.greater;
    } else {
      return AppString.smaller;
    }
  }

  @override
  State<SelectCurrencyCoin> createState() => _SelectCurrencyCoinState();
}

class _SelectCurrencyCoinState extends State<SelectCurrencyCoin> {
  List<Color> gradientColors = [
    const Color(0xffe68823),
    const Color(0xffe68823),
    //  Color(0xff007200),
    //Color(0xff008000),
  ];

  double graphIndex = -1;

  @override
  Widget build(BuildContext context) {
    ui.TextDirection direction = ui.TextDirection.ltr;

    double listIndex = 0;

    List<FlSpot> spots = widget.dataList
        .map((point) => FlSpot(listIndex++, double.parse(point.buyPrice!)))
        .toList();

    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            iconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.onSecondary),
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
                  height: 145,
                  child: headCardComponent(context,
                      name: widget.name,
                      image: widget.image,
                      sellPrice: widget.currentSellPrice,
                      buyPrice: widget.currentBuyPrice,
                      lastUpdate: widget.scrapedAt),
                ),
                SizedBox(
                  height: myHeight * .15,
                  width: myWidth,
                  //padding: const EdgeInsets.symmetric(horizontal: 9),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'سعر البيع : ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 26),
                                ),
                                Column(
                                  children: [
                                    Text(
                                        // currentBuyPrice.toStringAsFixed(2),
                                        graphIndex != -1
                                            ? widget
                                                .dataList[graphIndex.toInt()]
                                                .buyPrice
                                                .toString()
                                            : widget.currentBuyPrice,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(fontSize: 24)),
                                    Row(
                                      children: [
                                        Text(
                                          graphIndex != -1
                                              ? widget
                                                  .dataList[graphIndex.toInt()]
                                                  .buyRateChange
                                                  .toString()
                                              : widget.currentBuyRateChanges
                                                  .toString(),
                                          textDirection: direction,
                                          style: TextStyle(
                                            color: graphIndex != -1
                                                ? double.parse(widget
                                                            .dataList[graphIndex
                                                                .toInt()]
                                                            .buyRateChange!) >=
                                                        0
                                                    ? Colors.green
                                                    : Colors.red
                                                : widget.currentBuyRateChanges >=
                                                        0
                                                    ? Colors.green
                                                    : Colors.red,
                                            fontSize: 18,
                                          ),
                                        ),
                                        // currentBuyPriceChange >= 0?
                                        graphIndex != -1
                                            ? double.parse(widget
                                                        .dataList[
                                                            graphIndex.toInt()]
                                                        .buyRateChange!) >=
                                                    0
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
                                            : widget.currentBuyRateChanges >= 0
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
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'سعر الشراء : ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 26),
                                ),
                                Column(
                                  children: [
                                    Text(
                                        graphIndex != -1
                                            ? widget
                                                .dataList[graphIndex.toInt()]
                                                .sellPrice
                                                .toString()
                                            : widget.currentSellPrice,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(fontSize: 24)),
                                    Row(
                                      children: [
                                        Text(
                                          graphIndex != -1
                                              ? widget
                                                  .dataList[graphIndex.toInt()]
                                                  .sellRateChange
                                                  .toString()
                                              : widget.currentBuyRateChanges
                                                  .toString(),
                                          textDirection: direction,
                                          style: TextStyle(
                                            color: graphIndex != -1
                                                ? double.parse(widget
                                                            .dataList[graphIndex
                                                                .toInt()]
                                                            .sellRateChange!) >=
                                                        0
                                                    ? Colors.green
                                                    : Colors.red
                                                : widget.currentSellRateChanges >=
                                                        0
                                                    ? Colors.green
                                                    : Colors.red,
                                            fontSize: 18,
                                          ),
                                        ),
                                        // currentBuyPriceChange >= 0?
                                        graphIndex != -1
                                            ? double.parse(widget
                                                        .dataList[
                                                            graphIndex.toInt()]
                                                        .sellRateChange!) >=
                                                    0
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
                                            : widget.currentSellRateChanges >= 0
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
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: myWidth * .07),
                            Text(
                              'التاريخ : ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontSize: 18),
                            ),
                            Text(
                              graphIndex != -1
                                  ? widget
                                      .dataList[graphIndex.toInt()].scrapedAt
                                      .toString()
                                      .substring(0, 10)
                                  : widget.scrapedAt,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: myHeight * .03),
                Expanded(
                  // height: myHeight * .3,
                  child: LineChart(
                    mainData(spots),
                  ),
                ),

                SizedBox(
                  height: myHeight * 0.1,
                  width: myWidth,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      // Divider(color: Theme.of(context).colorScheme.primary,),
                      SizedBox(height: myHeight * 0.01),
                      Row(
                        children: [
                          SizedBox(width: myWidth * 0.05),
                          Expanded(
                            flex: 5,
                            child: InkWell(
                              onTap: () {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Save Value'),
                                      content: TextField(
                                        controller: widget.textController,
                                        decoration: const InputDecoration(
                                            hintText: 'Enter value to save'),
                                        keyboardType: TextInputType.number,
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            cubit
                                                .insertDatabase(
                                                    name: widget.name,
                                                    category:
                                                        AppString.currencyAlert,
                                                    price: widget
                                                        .textController.text,
                                                    status: widget.getState(
                                                        inputText: widget
                                                            .textController
                                                            .text,
                                                        currencyText: widget
                                                            .currentBuyPrice))
                                                .then((value) => widget
                                                    .textController
                                                    .clear());
                                          },
                                          child: const Text('Save'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: myHeight * 0.015),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0x99e68823),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/3.1.png',
                                      height: myHeight * 0.03,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: myWidth * .04,
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
      },
    );
  }

  LineChartData mainData(List<FlSpot> spots) {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchCallback: (event, response) {
          final res = response?.lineBarSpots;
          final res1 = event as FlTouchEvent;
          if (res != null && res.isNotEmpty) {
            setState(() {
              graphIndex = res[0].x;
            });

            print(graphIndex);
            // print('event :${res1} , result : ${res[0].x}');
            // if (event is FlTapUpEvent) {
            //   if (response != null && response.lineBarSpots != null) {
            //     print(event.details);
            //     print(response.lineBarSpots);
            //   }
            // }
          }
        },
      ),
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
            color: Color(0xff007200),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: const FlTitlesData(
        show: false,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
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
          preventCurveOverShooting: true,
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
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffe68823),
                Color(0x88e68823),
                Color(0x55e68823),
                Color(0x33e68823),
                Color(0x00e68823),
                //Color(0xff008000),
                // Color(0xff38b000),
                // Color(0xff70e000),
                // Color(0x0070e000),
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
