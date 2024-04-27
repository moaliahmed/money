import 'package:flutter/material.dart';

import '../currency/model/currency_item.dart';

class Scroll extends StatefulWidget {
  const Scroll({super.key});

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  final controller = ScrollController();
 late double itemSize ;

  void onListenerController() {
    setState(() {});
  }

  @override
  void initState() {
    controller.addListener(onListenerController);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(onListenerController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    itemSize=MediaQuery.of(context).size.height*.02;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: _body(),
    );
  }

  Widget _body() => _listView();

  Widget _listView() => SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          controller: controller,
          separatorBuilder: (context, index) {
            return const Divider(
              indent: 15,
              endIndent: 15,
              height: 1,
              color: Colors.grey,
            );
          },
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            print(itemSize);
            final itemOffset= index*80;
            final different=controller.offset-itemOffset;
            final percent=1-(different/(80/2));
            double opacity = percent;
            double scale = percent;
            if (opacity > 1) opacity = 1.0;
            if (opacity < 0) opacity = 0.0;
            if (scale > 1) scale = 1.0;
            return Opacity(
              opacity: opacity,
              child: Transform(
                alignment: Alignment.center,
                transform:  Matrix4.identity()..scale(scale,1.0),
                child: InkWell(
                  onTap: () {},
                  child: CurrencyItemComponent(
                    image:"https://banklive.net/flags/1x1/us.svg",
                    currentBuyPrice: double.parse(
                       '47'),
                    currentSellPrice: double.parse(
                       '47'),
                    name: 'الدولار الأمريكي',
                    currentBuyPriceChange:
                    double.parse('47'),
                    price: [47,46,40,50],
                    currentSellPriceChange:
                    double.parse('.46'),
                  ),
                ),
              ),
            );
          },
        ),
      );
}
