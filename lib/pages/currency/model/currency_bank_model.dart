class CurrencyBankModel {
  int? currencyId;
  String? name;
  String? image;
  String? currentBuyPrice;
  String? currentBuyPriceChange;
  String? currentSellPrice;
  String? currentSellPriceChange;
  String? scrapedAt;
  List<CurrencyPricesModel>? prices;

  CurrencyBankModel(
      {this.currencyId,
      this.name,
      this.image,
      this.currentBuyPrice,
      this.currentBuyPriceChange,
      this.currentSellPrice,
      this.currentSellPriceChange,
      this.scrapedAt,
      this.prices});

  CurrencyBankModel.fromJson(Map<String, dynamic> json) {
    currencyId = json['currency_id'];
    name = json['name'];
    image = json['image'];
    currentBuyPrice = json['current_buy_price'];
    currentBuyPriceChange = json['current_buy_price_change'];
    currentSellPrice = json['current_sell_price'];
    currentSellPriceChange = json['current_sell_price_change'];
    scrapedAt = json['scraped_at'];
    if (json['prices'] != null) {
      prices = <CurrencyPricesModel>[];
      json['prices'].forEach((v) {
        prices!.add(CurrencyPricesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['currency_id'] = currencyId;
    data['name'] = name;
    data['image'] = image;
    data['current_buy_price'] = currentBuyPrice;
    data['current_buy_price_change'] = currentBuyPriceChange;
    data['current_sell_price'] = currentSellPrice;
    data['current_sell_price_change'] = currentSellPriceChange;
    data['scraped_at'] = scrapedAt;
    if (prices != null) {
      data['prices'] = prices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CurrencyPricesModel {
  String? buyPrice;
  String? buyRateChange;
  String? sellPrice;
  String? sellRateChange;
  String? scrapedAt;

  CurrencyPricesModel(
      {this.buyPrice,
      this.buyRateChange,
      this.sellPrice,
      this.sellRateChange,
      this.scrapedAt});

  CurrencyPricesModel.fromJson(Map<String, dynamic> json) {
    buyPrice = json['buy_price'];
    buyRateChange = json['buy_rate_change'];
    sellPrice = json['sell_price'];
    sellRateChange = json['sell_rate_change'];
    scrapedAt = json['scraped_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['buy_price'] = buyPrice;
    data['buy_rate_change'] = buyRateChange;
    data['sell_price'] = sellPrice;
    data['sell_rate_change'] = sellRateChange;
    data['scraped_at'] = scrapedAt;
    return data;
  }
}

class MyData {
  DateTime date;
  double price;

  MyData({required this.date, required this.price});
}
