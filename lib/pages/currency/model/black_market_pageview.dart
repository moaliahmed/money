// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:lottie/lottie.dart';
// import 'package:money/cubit/app_cubit.dart';
// import 'package:money/pages/currency/model/black_market_item.dart';
//
// import '../../../core/assets_manager.dart';
// import 'currency_black_market_model.dart';
//
// class BlackMarketPageView extends StatefulWidget {
//   const BlackMarketPageView({
//     super.key,
//   });
//
//   @override
//   State<BlackMarketPageView> createState() => _BlackMarketPageViewState();
// }
//
// class _BlackMarketPageViewState extends State<BlackMarketPageView>
//     with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return BlocConsumer<AppCubit, AppState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         var cubit = AppCubit.get(context);
//         //cubit.getCurrencyBlackMarketDate;
//         return StreamBuilder<List<CurrencyBlackMarketModel>>(
//             stream: cubit.getBlackMarketCurrencyStream(),
//             builder: (context, snapshot) {
//               switch (snapshot.connectionState) {
//                 case ConnectionState.waiting:
//                   return cubit.isDark
//                       ? Center(
//                           child: SizedBox(
//                               height: MediaQuery.of(context).size.height * .2,
//                               child:
//                                   Lottie.asset(ImageAssets.loadingDarkLottie)))
//                       : Center(
//                           child: SizedBox(
//                               height: MediaQuery.of(context).size.height * .2,
//                               child: Lottie.asset(
//                                   ImageAssets.loadingLightLottie)));
//                 default:
//                   if (snapshot.hasError) {
//                     return const Center(
//                       child: Text('Some Error Occurred'),
//                     );
//                   } else {
//                     return Column(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 10),
//                           child: Row(
//                             children: [
//                               InkWell(
//                                 onTap: () {},
//                                 child: Row(
//                                   children: [
//                                     SizedBox(
//                                       height: 45,
//                                       width: 40,
//                                       child: Lottie.asset(
//                                           ImageAssets.arrowLottieRight),
//                                     ),
//                                     Text(
//                                       'عملات البنك',
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .displayLarge!
//                                           .copyWith(fontSize: 18),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Spacer(),
//                               Text('اخر تحديث : ',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .headlineLarge),
//                               // SizedBox(height: myHeight * 0.01),
//                               Text(
//                                   cubit.returnRelativeTime(
//                                       snapshot.data![0].scrapedAt!),
//                                   style:
//                                       Theme.of(context).textTheme.displayLarge),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: ListView.separated(
//                             //  controller: cubit.blackMarketScrollController,
//                             separatorBuilder: (context, index) {
//                               return const Divider(
//                                 indent: 15,
//                                 endIndent: 15,
//                                 height: 1,
//                                 color: Colors.grey,
//                               );
//                             },
//                             itemCount: snapshot.data!.length,
//                             shrinkWrap: true,
//                             itemBuilder: (context, index) {
//                               return InkWell(
//                                 onTap: () {},
//                                 child: BlackMarketItemComponent(
//                                   image: cubit
//                                       .currencyBlackMarketList[index].image!,
//                                   currentBuyPrice: double.parse(
//                                       snapshot.data![index].currentBuyPrice!),
//                                   currentSellPrice: double.parse(
//                                       snapshot.data![index].currentSellPrice!),
//                                   name: cubit
//                                       .currencyBlackMarketList[index].name!,
//                                   currentBuyPriceChange: snapshot
//                                       .data![index].currentBuyPriceColor!,
//                                   price:
//                                       cubit.extractCurrencyBlackMarketBuyPrices(
//                                           snapshot.data![index].prices!),
//                                   currentSellPriceChange: snapshot
//                                       .data![index].currentSellPriceColor!,
//                                 ),
//                               );
//                             },
//                           ),
//                         )
//                       ],
//                     );
//                   }
//               }
//             });
//       },
//     );
//   }
//
//   @override
//   // TODO: implement wantKeepAlive
//   bool get wantKeepAlive => true;
// }
